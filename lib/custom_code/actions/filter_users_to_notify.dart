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

Future<List<DocumentReference>> filterUsersToNotify(
    List<DocumentReference> userRefs) async {
  // Fetch all user documents in a single batch
  final userDocs = await Future.wait(
    userRefs.map((ref) => ref.get()),
  );

  // Filter users where `receive_noti != false`
  final validUsers = userDocs
      .where((doc) {
        final data = doc.data() as Map<String, dynamic>?;
        return data?['receive_noti'] != false; // Keep if true or null
      })
      .map((doc) => doc.reference)
      .toList();

  return validUsers;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
