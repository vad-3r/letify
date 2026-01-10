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

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> validatePassword(
  String userEmail,
  String userPassword,
) async {
  // Add your function code here!

  if (userEmail.isEmpty || userPassword.isEmpty) {
    return false;
  }

  try {
    // Attempt to sign in with provided credentials
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: userEmail.trim(),
      password: userPassword,
    );

    // If successful, sign out immediately and return true
    if (credential.user != null) {
      //await FirebaseAuth.instance.signOut();
      return true;
    }

    return false;
  } on FirebaseAuthException catch (e) {
    // All authentication failures return false
    return false;
  } catch (e) {
    // Any other errors return false
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
