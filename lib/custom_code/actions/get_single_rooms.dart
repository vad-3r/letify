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

Future<int> getSingleRooms(List<DocumentReference> propertyID) async {
  int totalRooms = 0;
  for (int i = 0; i < propertyID.length; i += 30) {
    List<DocumentReference> batch = propertyID.sublist(
      i,
      i + 30 > propertyID.length ? propertyID.length : i + 30,
    );

    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Room')
        .where('property_id', whereIn: batch) // Batches max 30 items
        .where('room_type', isEqualTo: 'Single')
        .get();

    totalRooms += querySnapshot.docs.length;
  }

  return totalRooms;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
