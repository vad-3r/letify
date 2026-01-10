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

Future<List<ScreeningBuilderQuestionRecord>> docRefConversion(
    List<DocumentReference> docRef) async {
  // Start all reads concurrently
  List<Future<ScreeningBuilderQuestionRecord>> futures =
      docRef.map((ref) async {
    DocumentSnapshot docSnapshot = await ref.get();
    return ScreeningBuilderQuestionRecord.fromSnapshot(docSnapshot);
  }).toList();

  // Wait for all to complete
  return await Future.wait(futures);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
