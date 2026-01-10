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

Future<int?> getUnreadUserCount(DocumentReference? messageRef) async {
  /// MODIFY CODE ONLY BELOW THIS LINE
  try {
    final snapshot = await messageRef!.get();
    final data = snapshot.data() as Map<String, dynamic>?;

    if (data == null || !data.containsKey('unread_user_list')) {
      return 0;
    }

    final List<dynamic> unreadUsers = data['unread_user_list'];
    return unreadUsers.length;
  } catch (e) {
    print('Error getting unread_users: $e');
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
