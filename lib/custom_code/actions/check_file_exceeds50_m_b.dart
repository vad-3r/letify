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

import 'dart:io';

Future<bool> checkFileExceeds50MB(String? filePath) async {
  // Return false if filePath is null or empty
  if (filePath == null || filePath.isEmpty) {
    return false;
  }
  try {
    // Create File object from path
    File file = File(filePath);

    print("This is the file path ${filePath}");
    print("This is also the file path ${file.path}");
    //print(file.length);
    // Check if file exists
    if (!await file.exists()) {
      return false;
    }

    // Get file size in bytes
    int fileSizeInBytes = await file.length();

    // Convert 50MB to bytes (50 * 1024 * 1024)
    int maxSizeInBytes = 50 * 1024 * 1024; // 52,428,800 bytes

    // Return true if file exceeds 50MB, false otherwise
    return fileSizeInBytes > maxSizeInBytes;
  } catch (e) {
    // Return false if any error occurs (file not accessible, etc.)
    print('Error checking file size: $e');
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
