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

Future<List<DocumentReference>> getContractsNotSignedNull(
    List<DocumentReference> propertyIDs) async {
  List<DocumentReference> allRooms = []; // Store all document references

  for (int i = 0; i < propertyIDs.length; i += 30) {
    List<DocumentReference> batch = propertyIDs.sublist(
      i,
      i + 30 > propertyIDs.length ? propertyIDs.length : i + 30,
    );

    // Query for `isSigned == null`
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Room')
        .where('property_id', whereIn: batch)
        .where('isGenerated', isEqualTo: true)
        .where('tenantInRoom', isNull: false)
        .where('isSigned', isNull: true)
        .get();

    // Extract document references
    allRooms.addAll(querySnapshot.docs.map((doc) => doc.reference));
  }

  return allRooms; // Return document references
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
