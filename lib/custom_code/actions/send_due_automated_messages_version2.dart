// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<int> sendDueAutomatedMessagesVersion2(DocumentReference userId) async {
  try {
    // Verify user authentication
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null || userId.id != currentUser.uid) {
      print('🚨 Authentication failed or user mismatch');
      return 0;
    }

    DateTime now = DateTime.now().toUtc();
    int messagesSent = 0;

    print('🕒 Checking for messages due at: $now');
    print('👤 User ID: ${userId.id}');

    // Query for due messages (matches setup action's collection)
    QuerySnapshot automatedMessages = await FirebaseFirestore.instance
        .collection('Automated_Messages')
        .where('is_active', isEqualTo: true)
        .where('next_send_time', isLessThanOrEqualTo: Timestamp.fromDate(now))
        .where('user_id', isEqualTo: userId)
        .get();

    print('🔍 Found ${automatedMessages.size} messages due for sending');

    for (QueryDocumentSnapshot doc in automatedMessages.docs) {
      try {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        print('\n📨 Processing message ID: ${doc.id}');

        // Validate required fields (must match setup action's fields)
        if (data['message'] == null ||
            data['period'] == null ||
            data['groupChatRefs'] == null ||
            data['scheduled_time'] == null) {
          print('⚠️ Missing required fields, skipping');
          continue;
        }

        // Extract fields exactly as stored by setup action
        String message = data['message'].toString();
        String period = data['period'].toString().toLowerCase();
        List<dynamic> groupChatRefsData = data['groupChatRefs'] as List;
        DateTime scheduledTime = (data['scheduled_time'] as Timestamp).toDate();
        TimeOfDay sendTime = TimeOfDay(
          hour: scheduledTime.hour,
          minute: scheduledTime.minute,
        );

        // Handle optional day_of_week_string (matches setup action)
        int? dayOfWeek;
        if (data['day_of_week_string'] != null) {
          dayOfWeek =
              _convertDayStringToNumber(data['day_of_week_string'] as String);
        }

        print('📝 Content: $message');
        print('⏱ Period: $period');
        print('🕐 Scheduled time: ${sendTime.hour}:${sendTime.minute}');
        if (dayOfWeek != null) print('📅 Day of week: $dayOfWeek');

        // Convert group chat references (matches setup's type)
        List<DocumentReference> groupChatRefs =
            groupChatRefsData.whereType<DocumentReference>().toList();

        if (groupChatRefs.isEmpty) {
          print('⚠️ No valid group chats to send to, skipping');
          continue;
        }

        // Send message to each group
        int successfulSends = 0;
        for (DocumentReference groupRef in groupChatRefs) {
          try {
            DocumentSnapshot groupDoc = await groupRef.get();
            if (!groupDoc.exists) {
              print('⚠️ Group document does not exist: ${groupRef.path}');
              continue;
            }

            Map<String, dynamic> groupData =
                groupDoc.data() as Map<String, dynamic>;
            List<dynamic> members = groupData['recipients'] ?? [];

            // Check membership (matches setup's user reference type)
            bool isMember = members.any((member) =>
                (member is DocumentReference && member.id == userId.id) ||
                (member is String && member == userId.id));

            if (!isMember) {
              print('⚠️ User is not a member of group ${groupRef.id}');
              continue;
            }

            // Create message (matches broadcast structure expected by setup)
            await groupRef.collection('Broadcast_Messages').add({
              'broadcast_id': groupRef,
              'sender': userId,
              'message': message,
              'timestamp': Timestamp.fromDate(now),
              'unread_user_list': members
                  .where((user) =>
                      (user is DocumentReference && user.id != userId.id) ||
                      (user is String && user != userId.id))
                  .toList(),
            });

            // Update group (matches fields used by setup)
            await groupRef.update({
              'last_message': message,
              'last_message_time': Timestamp.fromDate(now),
              'last_message_owner': userId,
            });

            successfulSends++;
            print('✅ Successfully sent to ${groupRef.id}');
          } catch (e) {
            print('❌ Error sending to group ${groupRef.id}: $e');
          }
        }

        if (successfulSends > 0) {
          messagesSent += successfulSends;

          // Calculate next send time using same logic as setup
          DateTime nextSendTime = _calculateNextSendTime(
            now,
            period,
            sendTime,
            dayOfWeek,
          );

          // Update with same field names/types as setup
          await doc.reference.update({
            'last_sent_time': Timestamp.fromDate(now),
            'next_send_time': Timestamp.fromDate(nextSendTime),
            'total_sent': FieldValue.increment(successfulSends),
          });

          print('🔄 Updated next send time to: $nextSendTime');
        }
      } catch (e) {
        print('❌ Error processing message ${doc.id}: $e');
      }
    }

    print('\n🎉 Total messages sent: $messagesSent');
    return messagesSent;
  } catch (e) {
    print('‼️ Critical error in sendDueAutomatedMessages: $e');
    return 0;
  }
}

// Matches EXACTLY with setup action's calculation logic
DateTime _calculateNextSendTime(
  DateTime now,
  String period,
  TimeOfDay sendTime,
  int? dayOfWeek,
) {
  switch (period) {
    case 'weekly':
      return _calculateNextWeeklyTime(now, sendTime, dayOfWeek ?? 1);

    case 'fortnightly':
      return _calculateNextWeeklyTime(now, sendTime, dayOfWeek ?? 1)
          .add(const Duration(days: 14));

    case 'monthly':
      return _calculateNextMonthlyTime(now, sendTime);

    default: // Daily
      return _calculateNextDailyTime(now, sendTime);
  }
}

// Below helpers are identical to those used in setup action

DateTime _calculateNextDailyTime(DateTime now, TimeOfDay sendTime) {
  DateTime today =
      DateTime(now.year, now.month, now.day, sendTime.hour, sendTime.minute);
  return today.isBefore(now) ? today.add(const Duration(days: 1)) : today;
}

DateTime _calculateNextWeeklyTime(
  DateTime now,
  TimeOfDay sendTime,
  int targetDayOfWeek,
) {
  int currentDayOfWeek = now.weekday;
  int daysUntilTarget = (targetDayOfWeek - currentDayOfWeek) % 7;

  DateTime targetDate = now.add(Duration(days: daysUntilTarget));
  DateTime scheduledDateTime = DateTime(
    targetDate.year,
    targetDate.month,
    targetDate.day,
    sendTime.hour,
    sendTime.minute,
  );

  return (daysUntilTarget == 0 && scheduledDateTime.isBefore(now))
      ? scheduledDateTime.add(const Duration(days: 7))
      : scheduledDateTime;
}

DateTime _calculateNextMonthlyTime(DateTime now, TimeOfDay sendTime) {
  DateTime nextMonth = DateTime(
    now.year,
    now.month + 1,
    now.day,
    sendTime.hour,
    sendTime.minute,
  );

  return (nextMonth.day != now.day)
      ? DateTime(now.year, now.month + 2, 0, sendTime.hour, sendTime.minute)
      : nextMonth;
}

int _convertDayStringToNumber(String dayString) {
  switch (dayString.toLowerCase()) {
    case 'monday':
    case 'mon':
      return 1;
    case 'tuesday':
    case 'tue':
    case 'tues':
      return 2;
    case 'wednesday':
    case 'wed':
      return 3;
    case 'thursday':
    case 'thu':
    case 'thurs':
      return 4;
    case 'friday':
    case 'fri':
      return 5;
    case 'saturday':
    case 'sat':
      return 6;
    case 'sunday':
    case 'sun':
      return 7;
    default:
      return 1; // Default to Monday
  }
}
