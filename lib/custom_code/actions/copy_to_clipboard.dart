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

Future<void> copyToClipboard(BuildContext context, String textToCopy) async {
  try {
    await Clipboard.setData(ClipboardData(text: textToCopy));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('✅ Copied to clipboard!')),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('❌ Failed to copy: $e')),
    );
    throw Exception('Failed to copy text: $e');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
