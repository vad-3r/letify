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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> setupAutomatedMessageVersion2(
  String message,
  String period,
  List<DocumentReference> recipients,
  DocumentReference userID,
  DateTime? scheduledDateTime, // Full DateTime from picker
  String? dayOfWeekString,
) async {
  try {
    DateTime now = DateTime.now();
    DateTime nextSendTime;

    // Use scheduledDateTime directly (or current time if null)
    DateTime scheduledTime = scheduledDateTime ?? now;

    // Calculate next send time based on period
    switch (period.toLowerCase()) {
      case 'daily':
      case 'everyday':
        nextSendTime = _calculateNextDailyTime(now, scheduledTime);
        break;

      case 'weekly':
      case 'every week':
        int targetDay = dayOfWeekString != null
            ? _convertDayStringToNumber(dayOfWeekString)
            : 1; // Default to Monday
        nextSendTime = _calculateNextWeeklyTime(now, scheduledTime, targetDay);
        break;

      case 'fortnightly':
        int targetDay = dayOfWeekString != null
            ? _convertDayStringToNumber(dayOfWeekString)
            : 1; // Default to Monday
        DateTime nextWeekly =
            _calculateNextWeeklyTime(now, scheduledTime, targetDay);
        nextSendTime = nextWeekly.add(const Duration(days: 14));
        break;

      case 'monthly':
        nextSendTime = _calculateNextMonthlyTime(now, scheduledTime);
        break;

      default:
        nextSendTime = _calculateNextDailyTime(now, scheduledTime);
    }

    // Create automated message document
    final automatedMessageData = {
      'message': message,
      'period': period,
      'groupChatRefs': recipients,
      'user_id': userID,
      'is_active': true,
      'next_send_time': Timestamp.fromDate(nextSendTime), // Firestore Timestamp
      'last_sent_time': null,
      'created_at': Timestamp.fromDate(now),
      'total_sent': 0,
      'scheduled_time':
          Timestamp.fromDate(scheduledTime), // Now stored as Timestamp
      'day_of_week_string': dayOfWeekString, // Original string (e.g. "Monday")
    };

    // Save to Firestore
    await FirebaseFirestore.instance
        .collection('Automated_Messages')
        .add(automatedMessageData);

    return true;
  } catch (e) {
    print('Error setting up automated message: $e');
    return false;
  }
}

// Updated helper functions to work with DateTime instead of TimeOfDay

DateTime _calculateNextDailyTime(DateTime now, DateTime scheduledTime) {
  DateTime today = DateTime(
    now.year,
    now.month,
    now.day,
    scheduledTime.hour,
    scheduledTime.minute,
  );

  return today.isBefore(now) ? today.add(Duration(days: 1)) : today;
}

DateTime _calculateNextWeeklyTime(
  DateTime now,
  DateTime scheduledTime,
  int targetDayOfWeek,
) {
  int currentDayOfWeek = now.weekday;
  int daysUntilTarget = (targetDayOfWeek - currentDayOfWeek) % 7;

  DateTime targetDate = now.add(Duration(days: daysUntilTarget));
  DateTime scheduledDateTime = DateTime(
    targetDate.year,
    targetDate.month,
    targetDate.day,
    scheduledTime.hour,
    scheduledTime.minute,
  );

  return (daysUntilTarget == 0 && scheduledDateTime.isBefore(now))
      ? scheduledDateTime.add(Duration(days: 7))
      : scheduledDateTime;
}

DateTime _calculateNextMonthlyTime(DateTime now, DateTime scheduledTime) {
  DateTime nextMonth = DateTime(
    now.year,
    now.month + 1,
    now.day,
    scheduledTime.hour,
    scheduledTime.minute,
  );

  return (nextMonth.day != now.day)
      ? DateTime(
          now.year, now.month + 2, 0, scheduledTime.hour, scheduledTime.minute)
      : nextMonth;
}

// Keep the same day conversion helper
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
      return 1;
  }
}
