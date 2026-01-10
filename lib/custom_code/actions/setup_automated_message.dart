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

Future<bool> setupAutomatedMessage(String message, String period,
    List<DocumentReference> recipients, DocumentReference userID) async {
  try {
    // Calculate next send time based on period
    DateTime now = DateTime.now();
    DateTime nextSendTime;

    switch (period.toLowerCase()) {
      case 'daily':
      case 'everyday':
        nextSendTime = now.add(Duration(days: 1));
        break;
      case 'weekly':
      case 'every week':
        nextSendTime = now.add(Duration(days: 7));
        break;
      case 'fortnightly':
        nextSendTime = now.add(Duration(days: 14));
        break;
      default:
        nextSendTime = now.add(Duration(days: 1));
    }

    // Create automated message document
    final automatedMessageData = {
      'message': message,
      'period': period,
      'groupChatRefs': recipients,
      'user_id': userID,
      'is_active': true,
      'next_send_time': nextSendTime,
      'last_sent_time': null,
      'created_at': now,
      'total_sent': 0,
    };

    // Save to Firestore collection 'automated_messages'
    await FirebaseFirestore.instance
        .collection('Automated_Messages')
        .add(automatedMessageData);

    return true;
  } catch (e) {
    print('Error setting up automated message: $e');
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
