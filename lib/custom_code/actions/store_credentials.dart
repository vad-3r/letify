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

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future storeCredentials(String email, String password) async {
  const storage = FlutterSecureStorage();

  await storage.write(key: 'user_email', value: email);
  await storage.write(key: 'user_password', value: password);

  // Update app state
  FFAppState().update(() {
    FFAppState().biometricEnabled = true;
    FFAppState().storedEmail = email;
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
