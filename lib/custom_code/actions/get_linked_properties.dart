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

Future<int> getLinkedProperties(List<DocumentReference> portfolioID) async {
  int totalRooms = 0;
  for (int i = 0; i < portfolioID.length; i += 30) {
    List<DocumentReference> batch = portfolioID.sublist(
      i,
      i + 30 > portfolioID.length ? portfolioID.length : i + 30,
    );

    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Property')
        .where('portfolio_id', whereIn: batch) // Each batch has max 30 items
        .get();

    totalRooms += querySnapshot.docs.length;
  }

  return totalRooms;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
