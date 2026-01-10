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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<int> sendDueAutomatedMessages(DocumentReference userId) async {
  try {
    // Enhanced authentication check
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null || userId.id != currentUser.uid) {
      print('🚨 Authentication failed or user mismatch');
      print('Current Firebase user: ${currentUser?.uid}');
      print('Provided user reference: ${userId.id}');
      return 0;
    }

    DateTime now = DateTime.now().toUtc();
    int messagesSent = 0;

    print('🕒 Checking for messages due at: $now');
    print('👤 User ID: ${userId.id}');

    // Query for automated messages
    QuerySnapshot automatedMessages = await FirebaseFirestore.instance
        .collection('Automated_Messages')
        .where('is_active', isEqualTo: true)
        .where('next_send_time', isLessThanOrEqualTo: now)
        .where('user_id', isEqualTo: userId)
        .get();

    print('🔍 Found ${automatedMessages.size} messages due for sending');

    for (QueryDocumentSnapshot doc in automatedMessages.docs) {
      try {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

        print('\n📨 Processing message ID: ${doc.id}');
        print('📝 Content: ${data['message']}');
        print('⏱ Period: ${data['period']}');

        String message = data['message']?.toString() ?? '';
        if (message.isEmpty) {
          print('⚠️ Empty message, skipping');
          continue;
        }

        String period = (data['period']?.toString() ?? 'daily').toLowerCase();
        List<dynamic> groupChatRefsData = data['groupChatRefs'] ?? [];

        // Convert and validate group chat references
        List<DocumentReference> groupChatRefs = [];
        for (var ref in groupChatRefsData) {
          if (ref is DocumentReference) {
            groupChatRefs.add(ref);
          } else {
            print('⚠️ Invalid group chat reference: $ref');
          }
        }

        print('👥 Number of group chats: ${groupChatRefs.length}');
        if (groupChatRefs.isEmpty) {
          print('⚠️ No valid group chats to send to, skipping');
          continue;
        }

        // Send message to each group chat
        int successfulSends = 0;
        for (DocumentReference groupRef in groupChatRefs) {
          try {
            print('\n💬 Attempting to send to group: ${groupRef.path}');

            // Validate group document
            DocumentSnapshot groupDoc = await groupRef.get();
            if (!groupDoc.exists) {
              print('⚠️ Group document does not exist: ${groupRef.path}');
              continue;
            }

            // Check membership with flexible comparison
            Map<String, dynamic> groupData =
                groupDoc.data() as Map<String, dynamic>;
            List<dynamic> members = groupData['recipients'] ?? [];

            bool isMember = members.any((member) {
              if (member is DocumentReference) return member.id == userId.id;
              if (member is String) return member == userId.id;
              return false;
            });

            if (!isMember) {
              print('⚠️ User is not a member of group ${groupRef.id}');
              print('Members list: $members');
              continue;
            }

            // Prepare unread list
            List<dynamic> unreadUserList = [];
            try {
              var unreadData = groupDoc.get('recipients');
              if (unreadData != null)
                unreadUserList = List<dynamic>.from(unreadData);
            } catch (e) {
              print('ℹ️ No unread_user_list field, starting fresh');
            }

            // Create message with proper references
            DocumentReference messageRef =
                await groupRef.collection('Broadcast_Messages').add({
              'broadcast_id': groupRef,
              'sender': userId,
              'message': message,
              'timestamp': now,
              'unread_user_list': unreadUserList.where((user) {
                if (user is DocumentReference) return user.id != userId.id;
                if (user is String) return user != userId.id;
                return true;
              }).toList(),
            });

            // Update group metadata
            await groupRef.update({
              'last_message': message,
              'last_message_time': now,
              'last_message_sent_ref': FieldValue.arrayUnion([messageRef]),
              'unread_users': unreadUserList.where((user) {
                if (user is DocumentReference) return user.id != userId.id;
                if (user is String) return user != userId.id;
                return true;
              }).toList(),
              'last_message_owner': userId
            });

            successfulSends++;
            print('✅ Successfully sent to ${groupRef.id}');
          } catch (e) {
            print('❌ Error sending to group ${groupRef.id}: $e');
            print(e ?? 'No stack trace');
          }
        }

        if (successfulSends > 0) {
          messagesSent += successfulSends;

          // Calculate next send time
          DateTime nextSendTime = now;
          switch (period) {
            case 'weekly':
              nextSendTime = now.add(Duration(days: 7));
              break;
            case 'fortnightly':
              nextSendTime = now.add(Duration(days: 14));
              break;
            case 'monthly':
              nextSendTime = DateTime(now.year, now.month + 1, now.day);
              break;
            default: // daily
              nextSendTime = now.add(Duration(days: 1));
          }

          // Update the automated message
          await doc.reference.update({
            'last_sent_time': now,
            'next_send_time': nextSendTime,
            'total_sent': (data['total_sent'] ?? 0) + successfulSends,
          });

          print('🔄 Updated next send time to: $nextSendTime');
        } else {
          print('⚠️ No successful sends for message ${doc.id}');
        }
      } catch (e) {
        print('❌ Error processing message ${doc.id}: $e');
        print(e ?? 'No stack trace');
      }
    }

    print('\n🎉 Total messages sent: $messagesSent');
    return messagesSent;
  } catch (e) {
    print('‼️ Critical error in sendDueAutomatedMessages: $e');
    print(e ?? 'No stack trace');
    return 0;
  }
}
