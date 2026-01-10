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

import 'dart:async';

Future<void> startPageLocationTimer() async {
  // Check if location sharing is active and we have active chats
  if (FFAppState().isLocationSharingActive &&
      FFAppState().locationSharingDocRefs != null &&
      FFAppState().locationSharingDocRefs!.isNotEmpty) {
    Timer.periodic(Duration(seconds: 5), (timer) async {
      try {
        // Call the update function
        bool continueSharing = await updateLocationAndTimer();

        // Check if we should stop the timer
        if (!continueSharing ||
            !FFAppState().isLocationSharingActive ||
            FFAppState().locationSharingDocRefs == null ||
            FFAppState().locationSharingDocRefs!.isEmpty) {
          timer.cancel();
          print('Page timer cancelled - location sharing stopped');
        }
      } catch (e) {
        print('Page timer error: $e');
        timer.cancel();

        // Reset app state on error
        FFAppState().isLocationSharingActive = false;
        FFAppState().locationSharingTimer = "0";
        FFAppState().locationSharingDocRefs = [];
        FFAppState().locationSharingStartTime = null;
        FFAppState().locationSharingDuration = "";
      }
    });

    print(
        'Page location timer started for ${FFAppState().locationSharingDocRefs!.length} active chats');
  } else {
    print(
        'Cannot start timer - location sharing not active or no active chats');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
