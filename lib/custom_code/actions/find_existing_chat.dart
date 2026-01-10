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

Future<DocumentReference?> findExistingChat(
  DocumentReference currentUser,
  DocumentReference otherUser,
) async {
  try {
    // Query for broadcasts where:
    // 1. senderId is currentUser and recipients contains otherUser
    // 2. OR senderId is otherUser and recipients contains currentUser
    // 3. AND broadcastName is 'Private Chat'
    // 4. AND recipients array has exactly 2 members (to ensure it's a private chat)

    // First query: current user as sender
    final query1 = FirebaseFirestore.instance
        .collection('Broadcasts')
        .where('senderId', isEqualTo: currentUser)
        .where('recipients', arrayContains: otherUser)
        .where('broadcastName', isEqualTo: 'Private Chat')
        .limit(1);

    final snapshot1 = await query1.get();

    if (snapshot1.docs.isNotEmpty) {
      // Check if it's exactly 2 recipients (private chat)
      final doc = snapshot1.docs.first;
      final recipients = doc.data()['recipients'] as List<dynamic>?;
      if (recipients != null && recipients.length == 2) {
        return doc.reference;
      }
    }

    // Second query: other user as sender
    final query2 = FirebaseFirestore.instance
        .collection('Broadcasts')
        .where('senderId', isEqualTo: otherUser)
        .where('recipients', arrayContains: currentUser)
        .where('broadcastName', isEqualTo: 'Private Chat')
        .limit(1);

    final snapshot2 = await query2.get();

    if (snapshot2.docs.isNotEmpty) {
      // Check if it's exactly 2 recipients (private chat)
      final doc = snapshot2.docs.first;
      final recipients = doc.data()['recipients'] as List<dynamic>?;
      if (recipients != null && recipients.length == 2) {
        return doc.reference;
      }
    }

    // No existing chat found
    return null;
  } catch (e) {
    print('Error finding existing chat: $e');
    return null;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
