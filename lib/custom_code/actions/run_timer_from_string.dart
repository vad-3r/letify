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

Timer? _activeTimer;
String _timerStatus = 'stopped';

Future<String> runTimerFromString(String durationString) async {
  durationString = durationString.trim().toLowerCase();
  Duration? duration;

  if (durationString == 'stop') {
    if (_activeTimer != null && _activeTimer!.isActive) {
      _activeTimer!.cancel();
      print('Timer stopped.');
      _timerStatus = 'stopped';
      return 'stopped';
    } else {
      print('No active timer to stop.');
      return 'no active timer';
    }
  }

  final minuteRegex = RegExp(r'^(\d+)\s*min(s)?');
  final hourRegex = RegExp(r'^(\d+)\s*hour(s)?');

  if (minuteRegex.hasMatch(durationString)) {
    final match = minuteRegex.firstMatch(durationString);
    if (match != null) {
      final minutes = int.parse(match.group(1)!);
      duration = Duration(minutes: minutes);
    }
  } else if (hourRegex.hasMatch(durationString)) {
    final match = hourRegex.firstMatch(durationString);
    if (match != null) {
      final hours = int.parse(match.group(1)!);
      duration = Duration(hours: hours);
    }
  }

  if (duration != null) {
    print('Timer started for ${duration.inMinutes} minute(s).');
    _timerStatus = 'running';

    // Start the timer in the background - NON-BLOCKING
    _activeTimer = Timer(duration, () {
      print('Timer completed!');
      _timerStatus = '0';
    });

    // Return immediately without waiting
    return 'started';
  } else {
    print('Invalid duration string: "$durationString"');
    return 'invalid';
  }
}

String getTimerStatus() {
  return _timerStatus;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
