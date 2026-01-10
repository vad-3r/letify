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

Future<void> debugPrintCopy() async {
  String word = 'Racecar';
  String word2 = '';
  String cleanedWord =
      word.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  word2 = String.fromCharCodes(cleanedWord.runes.toList().reversed);
  print(cleanedWord == word2);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
