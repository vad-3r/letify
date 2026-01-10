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

Future<bool> updateLocationAndTimer() async {
  try {
    // Check if location sharing is active
    if (!FFAppState().isLocationSharingActive ||
        FFAppState().locationSharingDocRefs == null ||
        FFAppState().locationSharingDocRefs!.isEmpty ||
        FFAppState().locationSharingStartTime == null) {
      return false;
    }

    // Calculate elapsed time
    DateTime startTime = FFAppState().locationSharingStartTime!;
    DateTime now = DateTime.now();
    int elapsedSeconds = now.difference(startTime).inSeconds;

    // Calculate remaining time based on original duration
    int totalSeconds =
        parseDurationToSeconds(FFAppState().locationSharingDuration);
    int remainingSeconds = totalSeconds - elapsedSeconds;

    // Check if time has expired
    if (remainingSeconds <= 0) {
      print('Timer expired, stopping all location sharing');
      await stopAllLocationSharing();
      return false;
    }

    // Update timer display
    FFAppState().locationSharingTimer = formatSecondsToTimer(remainingSeconds);

    // Get current location
    LatLng? currentLocation = await getCurrentUserLocation(
      defaultLocation: LatLng(0.0, 0.0),
    );

    // Update all active broadcast documents
    List<DocumentReference> activeRefs =
        List.from(FFAppState().locationSharingDocRefs!);
    List<DocumentReference> failedRefs = [];

    for (DocumentReference ref in activeRefs) {
      try {
        await ref.update(createBroadcastMessagesRecordData(
          currentLocation: currentLocation,
          //lastUpdated: getCurrentTimestamp,
          trackingActive: true,
        ));
      } catch (e) {
        print('Failed to update document: $e');
        failedRefs.add(ref);
      }
    }

    // Remove failed references
    if (failedRefs.isNotEmpty) {
      for (DocumentReference failedRef in failedRefs) {
        activeRefs.remove(failedRef);
      }
      FFAppState().locationSharingDocRefs = activeRefs;
    }

    print(
        'Location updated for ${activeRefs.length} chats: ${currentLocation?.toString()}, Time remaining: ${FFAppState().locationSharingTimer}');
    return true;
  } catch (e) {
    print('Error updating location and timer: $e');
    return false;
  }
}

// Helper function to parse duration string to seconds
int parseDurationToSeconds(String duration) {
  switch (duration.toLowerCase()) {
    case '1 minute':
      return 60;
    case '5 minutes':
      return 300;
    case '10 minutes':
      return 600;
    case '15 minutes':
      return 900;
    case '30 minutes':
      return 1800;
    case '1 hour':
      return 3600;
    default:
      List<String> parts = duration.split(':');
      if (parts.length == 2) {
        int minutes = int.tryParse(parts[0]) ?? 0;
        int seconds = int.tryParse(parts[1]) ?? 0;
        return (minutes * 60) + seconds;
      }
      return 300;
  }
}

// Helper function to format seconds to MM:SS
String formatSecondsToTimer(int seconds) {
  int minutes = seconds ~/ 60;
  int remainingSeconds = seconds % 60;
  return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
