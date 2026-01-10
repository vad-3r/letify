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

import 'package:html/dom.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> onReorder(
    List<DocumentReference> rooms, int newIndex, int oldIndex) async {
  if (oldIndex < newIndex) {
    newIndex -= 1;
  }

  final DocumentReference movedRoomRef = rooms.removeAt(oldIndex);
  rooms.insert(newIndex, movedRoomRef);

  final batch = FirebaseFirestore.instance.batch();
  for (int i = 0; i < rooms.length; i++) {
    batch.update(rooms[i], {"room_index": i});
  }
  await batch.commit();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
