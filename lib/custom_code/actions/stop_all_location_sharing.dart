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

Future<void> stopAllLocationSharing() async {
  try {
    List<DocumentReference> currentRefs =
        FFAppState().locationSharingDocRefs ?? [];

    // Stop all location sharing
    for (DocumentReference ref in currentRefs) {
      try {
        await ref.update(createBroadcastMessagesRecordData(
          trackingActive: false,
          //lastUpdated: getCurrentTimestamp,
        ));
      } catch (e) {
        print('Error updating document: $e');
      }
    }

    // Reset all app state variables
    FFAppState().isLocationSharingActive = false;
    FFAppState().locationSharingTimer = "0";
    FFAppState().locationSharingDocRefs = [];
    FFAppState().locationSharingStartTime = null;
    FFAppState().locationSharingDuration = "";

    print('Stopped all location sharing');
  } catch (e) {
    print('Error stopping location sharing: $e');
    // Reset everything as fallback
    FFAppState().isLocationSharingActive = false;
    FFAppState().locationSharingTimer = "0";
    FFAppState().locationSharingDocRefs = [];
    FFAppState().locationSharingStartTime = null;
    FFAppState().locationSharingDuration = "";
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
