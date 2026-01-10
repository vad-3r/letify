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

//import '/flutter_flow/flutter_flow_util.dart';

Future<List<DocumentReference>> getLinkedPropertiesCopy(
    List<DocumentReference> portfolioID) async {
  List<DocumentReference> allDocuments = [];

  for (int i = 0; i < portfolioID.length; i += 30) {
    List<DocumentReference> batch = portfolioID.sublist(
      i,
      i + 30 > portfolioID.length ? portfolioID.length : i + 30,
    );

    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Property')
        .where('portfolio_id', whereIn: batch) // Each batch has max 30 items
        .get();

    allDocuments.addAll(querySnapshot.docs
        .map((doc) => doc.reference)); // Collect all documents
  }

  return allDocuments;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
