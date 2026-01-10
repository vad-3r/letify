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

//import 'dart:async';

Timer? _activeTimer;
String _timerStatus = 'started';

Future<String> runOneMinuteTimer() async {
  Duration duration = Duration(minutes: 1);

  print('1-minute timer started.');
  _timerStatus = 'started';

  await Future.delayed(duration);

  print('1-minute timer completed!');
  _timerStatus = '0';
  return '0';
}

String getTimerStatus() {
  return _timerStatus;
}

// and then add the boilerplate code using the green button on the right!
