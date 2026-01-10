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

import 'dart:convert';

Future<bool> extractAndStoreAnswers(
    String jsonString, String questionId) async {
  try {
    // Clean and validate the JSON string
    String cleanedJson = fixJson(jsonString).trim();

    // Add debugging
    print('Original JSON: $jsonString');
    print('Cleaned JSON: $cleanedJson');

    // Check if the string is empty or malformed
    if (cleanedJson.isEmpty ||
        !cleanedJson.startsWith('{') ||
        !cleanedJson.endsWith('}')) {
      print('Invalid JSON format: JSON must start with { and end with }');
      return false;
    }

    // Parse the JSON string
    Map<String, dynamic> jsonData;
    try {
      jsonData = json.decode(cleanedJson);
    } catch (e) {
      print('JSON parsing error: $e');
      print('Problematic JSON: $cleanedJson');
      return false;
    }

    // Check if we have any valid data
    if (jsonData.isEmpty) {
      print('JSON is empty');
      return false;
    }

    // Get reference to answers subcollection under specific question
    CollectionReference answersCollection = FirebaseFirestore.instance
        .doc(questionId)
        .collection('Screening_Builder_Answers');

    // Use batch for better performance
    WriteBatch batch = FirebaseFirestore.instance.batch();

    int index = 0;
    bool hasValidEntries = false;

    // Iterate through each key-value pair in the JSON
    jsonData.forEach((key, value) {
      print('Processing key: "$key", value: $value');

      // Skip entries where key is empty or value is null
      if (key.isNotEmpty && value != null) {
        // Create new document reference in subcollection
        DocumentReference docRef = answersCollection.doc();

        // Convert value to double safely
        double points;
        if (value is num) {
          points = value.toDouble();
        } else if (value is String) {
          points = double.tryParse(value) ?? 0.0;
        } else {
          points = 0.0;
        }

        DocumentReference questionRef =
            FirebaseFirestore.instance.doc(questionId);
        // Add to batch with your schema
        batch.set(docRef, {
          'question_id': questionRef,
          'answer': key, // String - the answer text
          'index': index.toString(), // String - convert int to string
          'points': points, // Double - safely converted
          'created_at': FieldValue.serverTimestamp(),
        });

        index++;
        hasValidEntries = true;
        print('Added to batch: $key -> $points');
      } else {
        print('Skipped invalid entry: key="$key", value=$value');
      }
    });

    if (!hasValidEntries) {
      print('No valid entries found to store');
      return false;
    }

    // Commit the batch
    await batch.commit();
    print('Successfully stored $index answers');

    return true; // Success
  } catch (e) {
    print('Error in extractAndStoreAnswers: $e');
    return false; // Failed
  }
}

//Helper function to "Sanitize" the JSON

String fixJson(String input) {
  // Wrap unquoted keys with quotes
  String cleaned = input.replaceAllMapped(
    RegExp(r'([,{]\s*)([^":\s][^:]*)(\s*:)'),
    (m) => '${m[1]}"${m[2]?.trim()}"${m[3]}',
  );

  // Remove entries with empty keys (both quoted and unquoted)
  cleaned = cleaned.replaceAll(
      RegExp(r'"\s*":\s*null\s*,?'), ''); // quoted empty keys
  cleaned = cleaned.replaceAll(
      RegExp(r',?\s*:\s*null\s*,?'), ','); // unquoted empty keys

  // Also remove dangling commas if they appear
  cleaned = cleaned.replaceAll(RegExp(r',\s*}'), '}');
  cleaned = cleaned.replaceAll(RegExp(r',\s*,'), ','); // handle double commas

  return cleaned;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
