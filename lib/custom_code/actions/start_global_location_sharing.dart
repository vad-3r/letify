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

Future<void> startGlobalLocationSharing(
  String duration,
  DocumentReference broadcastRef,
) async {
  try {
    // Convert duration string to timer format
    String timerString = await convertDurationToTimer(duration);

    // Initialize or get existing broadcast references list
    List<DocumentReference> existingRefs =
        FFAppState().locationSharingDocRefs ?? [];

    // Add new broadcast reference if not already present
    if (!existingRefs.contains(broadcastRef)) {
      existingRefs.add(broadcastRef);
    }

    // Set app state variables
    FFAppState().isLocationSharingActive = true;
    FFAppState().locationSharingTimer = timerString;
    FFAppState().locationSharingDocRefs = existingRefs;

    // Set start time only if this is the first active sharing session
    if (FFAppState().locationSharingStartTime == null) {
      FFAppState().locationSharingStartTime = DateTime.now();
      FFAppState().locationSharingDuration = duration;
    }

    // Update the broadcast document to active
    await broadcastRef.update(createBroadcastMessagesRecordData(
      trackingActive: true,
      //lastUpdated: getCurrentTimestamp,
    ));

    print('Location sharing started for duration: $duration');
    print('Timer set to: $timerString');
    print('Total active chats: ${existingRefs.length}');
  } catch (e) {
    print('Error starting location sharing: $e');
    // Don't reset everything on error, just remove this specific reference
    List<DocumentReference> currentRefs =
        FFAppState().locationSharingDocRefs ?? [];
    currentRefs.remove(broadcastRef);
    FFAppState().locationSharingDocRefs = currentRefs;
  }
}

// Helper function to convert duration to timer format
Future<String> convertDurationToTimer(String duration) async {
  switch (duration.toLowerCase()) {
    case '1 minute':
      return '1:00';
    case '5 minutes':
      return '5:00';
    case '10 minutes':
      return '10:00';
    case '15 minutes':
      return '15:00';
    case '30 minutes':
      return '30:00';
    case '1 hour':
      return '60:00';
    default:
      return duration;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
