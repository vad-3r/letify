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

import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

Future<bool> checkBiometricsSupport() async {
  final LocalAuthentication localAuth = LocalAuthentication();

  try {
    // Check if device is capable of biometrics (e.g., fingerprint, face)
    bool canCheckBiometrics = await localAuth.canCheckBiometrics;

    // Optionally, check if any biometric hardware is actually available
    bool isDeviceSupported = await localAuth.isDeviceSupported();

    print('Biometrics available: $canCheckBiometrics');
    print('Device supported: $isDeviceSupported');

    // Return true only if both are true
    return canCheckBiometrics && isDeviceSupported;
  } on PlatformException catch (e) {
    print('Error checking biometrics: ${e.message}');
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
