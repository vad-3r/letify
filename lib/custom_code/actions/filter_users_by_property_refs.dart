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

Future<List<DocumentReference>> filterUsersByPropertyRefs(
  List<DocumentReference> users,
  List<DocumentReference> properties,
) async {
  if (users.isEmpty || properties.isEmpty) {
    return [];
  }

  // Convert property paths to a set for O(1) lookups
  final propertyPaths = properties.map((ref) => ref.path).toSet();

  // Use Future.wait to fetch all user documents in parallel
  final userSnapshots = await Future.wait(users.map((user) => user.get()));

  // Filter users whose property_id exists in the properties list
  return userSnapshots
      .where((snap) {
        final userData = snap.data() as Map<String, dynamic>?;
        if (userData == null) return false;

        final propertyRef = userData['property_id'] as DocumentReference?;
        return propertyRef != null && propertyPaths.contains(propertyRef.path);
      })
      .map((snap) => snap.reference)
      .toList();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
