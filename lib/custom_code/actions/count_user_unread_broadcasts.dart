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

Future<int?> countUserUnreadBroadcasts(
  List<DocumentReference> broadcastDocRefs,
  DocumentReference currentUserRefs,
) async {
  /// MODIFY CODE ONLY BELOW THIS LINE
  try {
    // Return 0 if no broadcasts provided
    if (broadcastDocRefs.isEmpty) {
      return 0;
    }

    int unreadCount = 0;

    // Iterate through each broadcast document reference
    for (DocumentReference broadcastRef in broadcastDocRefs) {
      // Get the broadcast document
      DocumentSnapshot broadcastDoc = await broadcastRef.get();

      // Check if document exists and has data
      if (broadcastDoc.exists && broadcastDoc.data() != null) {
        Map<String, dynamic> data = broadcastDoc.data() as Map<String, dynamic>;

        // Get the unread_users list (default to empty list if null)
        List<dynamic> unreadUsers = data['unread_users'] ?? [];

        // Check if current user reference is in the unread_users list
        if (unreadUsers.contains(currentUserRefs)) {
          unreadCount++;
        }
      }
    }

    return unreadCount;
  } catch (e) {
    // Log error and return 0 in case of any issues
    print('Error counting unread broadcasts: $e');
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
