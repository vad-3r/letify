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

import 'package:flutter/services.dart';

//import 'package:local_auth_darwin/types/auth_messages_ios.dart';

import 'package:local_auth/local_auth.dart';
//import 'package:local_auth_ios/local_auth_ios.dart';

Future<bool> authenticateWithBiometrics() async {
  final LocalAuthentication localAuth = LocalAuthentication();

  try {
    // Check if device supports authentication (biometrics or credentials)

    // Authenticate with platform-specific messages
    final bool didAuthenticate = await localAuth.authenticate(
      localizedReason: 'Authenticate to access your account',
      options: const AuthenticationOptions(
        biometricOnly:
            false, // Only biometrics, no fallback to device credentials
        stickyAuth: true, // Keep dialog visible when app is minimized
        sensitiveTransaction: true, // (Android) Requires confirmation
        useErrorDialogs: true, // Let system handle error dialogs
      ),
    );

    return didAuthenticate;
  } on PlatformException catch (e) {
    print('Biometric authentication failed: ${e.message}');
    if (e.code == 'lockedOut' || e.code == 'PermanentlyLockedOut') {
      // Handle locked biometric sensors
    }
    return false;
  } catch (e) {
    print('Unexpected error: $e');
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
