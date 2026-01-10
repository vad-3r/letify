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

import 'index.dart'; // Imports other custom actions

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> updateReadStatusBatch(
  DocumentReference broadcastRef,
  DocumentReference? lastMessageRef,
  List<DocumentReference> unreadMessages,
  DocumentReference currentUserRef,
) async {
  try {
    // Get Firestore instance
    final firestore = FirebaseFirestore.instance;
    final batch = firestore.batch();

    // Update main broadcast record - remove user from unread_users
    batch.update(broadcastRef, {
      'unread_users': FieldValue.arrayRemove([currentUserRef]),
    });

    // Update last message - remove user from unread_user_list
    if (lastMessageRef != null) {
      batch.update(lastMessageRef, {
        'unread_user_list': FieldValue.arrayRemove([currentUserRef]),
      });
    }

    // Update all unread messages - remove user from unread_user_list
    for (DocumentReference messageRef in unreadMessages) {
      batch.update(messageRef, {
        'unread_user_list': FieldValue.arrayRemove([currentUserRef]),
      });
    }

    // Clear the unread_messages array in the main broadcast
    batch.update(broadcastRef, {
      'unread_messages': [],
    });

    // Commit all operations at once
    await batch.commit();

    print('Batch update completed successfully');
  } catch (e) {
    print('Error in batch update: $e');
    // Optionally rethrow the error if you want to handle it in the UI
    // throw e;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
