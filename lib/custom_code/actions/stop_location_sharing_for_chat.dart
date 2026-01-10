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

// Custom Action: stopGlobalLocationSharing
// No parameters needed

Future<void> stopLocationSharingForChat(DocumentReference broadcastRef) async {
  try {
    List<DocumentReference> currentRefs =
        FFAppState().locationSharingDocRefs ?? [];

    // Stop sharing for specific chat
    await broadcastRef.update(createBroadcastMessagesRecordData(
      trackingActive: false,
      //lastUpdated: getCurrentTimestamp,
    ));

    // Remove from list
    currentRefs.remove(broadcastRef);
    FFAppState().locationSharingDocRefs = currentRefs;

    print('Stopped location sharing for specific chat');
    print('Remaining active chats: ${currentRefs.length}');

    // If no more active chats, reset everything
    if (currentRefs.isEmpty) {
      FFAppState().isLocationSharingActive = false;
      FFAppState().locationSharingTimer = "0";
      FFAppState().locationSharingDocRefs = [];
      FFAppState().locationSharingStartTime = null;
      FFAppState().locationSharingDuration = "";
    }
  } catch (e) {
    print('Error stopping location sharing for chat: $e');
    // Remove from list even if update fails
    List<DocumentReference> currentRefs =
        FFAppState().locationSharingDocRefs ?? [];
    currentRefs.remove(broadcastRef);
    FFAppState().locationSharingDocRefs = currentRefs;

    // Reset everything if no more chats
    if (currentRefs.isEmpty) {
      FFAppState().isLocationSharingActive = false;
      FFAppState().locationSharingTimer = "0";
      FFAppState().locationSharingDocRefs = [];
      FFAppState().locationSharingStartTime = null;
      FFAppState().locationSharingDuration = "";
    }
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
