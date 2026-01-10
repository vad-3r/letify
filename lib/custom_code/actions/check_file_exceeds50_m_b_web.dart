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

import 'package:firebase_storage/firebase_storage.dart';

Future<bool> checkFileExceeds50MBWeb(String path) async {
  try {
    final ref = FirebaseStorage.instance.refFromURL(path);
    final metadata = await ref.getMetadata();
    final size = metadata.size ?? 0;
    return size > 50 * 1024 * 1024;
  } catch (e) {
    print("Error fetching metadata: $e");
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
