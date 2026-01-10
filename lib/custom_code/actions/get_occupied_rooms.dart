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

Future<int> getOccupiedRooms(List<DocumentReference> propertyID) async {
  if (propertyID.isEmpty) return 0;

  int totalRooms = 0;
  for (int i = 0; i < propertyID.length; i += 30) {
    final batch = propertyID.sublist(
      i,
      i + 30 > propertyID.length ? propertyID.length : i + 30,
    );

    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('Room')
          .where('property_id', whereIn: batch)
          .where('room_status', isEqualTo: 'Occupied')
          .where('tenantInRoom', isNotEqualTo: null)
          .get();

      totalRooms += querySnapshot.docs.length;
    } catch (e) {
      print('Error fetching batch: $e');
      // Handle error (e.g., return 0 or rethrow)
    }
  }

  return totalRooms;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
