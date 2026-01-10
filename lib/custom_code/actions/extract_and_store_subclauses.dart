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
import 'package:cloud_firestore/cloud_firestore.dart'; // Add this import

Future<bool> extractAndStoreSubclauses(
    String jsonString, String mainClausePath) async {
  try {
    // Add null/empty checks
    if (jsonString.isEmpty) {
      print('Error: jsonString is empty');
      return false;
    }

    if (mainClausePath.isEmpty) {
      print('Error: mainClausePath is empty');
      return false;
    }

    // Clean and validate JSON
    String cleanedJson = fixJson(jsonString).trim();

    print('Original JSON: $jsonString');
    print('Cleaned JSON: $cleanedJson');

    if (cleanedJson.isEmpty ||
        !cleanedJson.startsWith('{') ||
        !cleanedJson.endsWith('}')) {
      print('Invalid JSON format');
      return false;
    }

    Map<String, dynamic> jsonData;
    try {
      jsonData = json.decode(cleanedJson);
    } catch (e) {
      print('JSON parsing error: $e');
      return false;
    }

    if (jsonData.isEmpty) {
      print('JSON is empty');
      return false;
    }

    // Reference to main clause with better error handling
    DocumentReference? mainClauseRef;
    try {
      mainClauseRef = FirebaseFirestore.instance.doc(mainClausePath);
    } catch (e) {
      print('Error creating document reference: $e');
      return false;
    }

    // Reference to subcollection
    final subclausesCollection =
        mainClauseRef.collection('Contract_Builder_Sub_Clause');

    final batch = FirebaseFirestore.instance.batch();
    int position = 0;
    bool hasValidEntries = false;

    jsonData.forEach((key, value) {
      if (key.isNotEmpty && value != null && value.toString().isNotEmpty) {
        final subDocRef = subclausesCollection.doc();

        batch.set(subDocRef, {
          'main_clause_id': mainClauseRef,
          'sub_clause': key,
          'index': value.toString(), // index from JSON
          'position': position, // ordering index
          'created_at': FieldValue.serverTimestamp(),
        });

        print('Added subclause: $key with index=$value, position=$position');

        position++;
        hasValidEntries = true;
      } else {
        print('Skipped invalid entry: key="$key", value=$value');
      }
    });

    if (!hasValidEntries) {
      print('No valid entries found to store');
      return false;
    }

    await batch.commit();
    print('Successfully stored $position subclauses');
    return true;
  } catch (e) {
    print('Error in extractAndStoreSubclauses: $e');
    // Print stack trace for debugging
    print('Stack trace: ${StackTrace.current}');
    return false;
  }
}

// Helper function to "Sanitize" the JSON
String fixJson(String input) {
  try {
    // Add null check
    if (input.isEmpty) {
      return '{}';
    }

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

    // Fix leading commas
    cleaned = cleaned.replaceAll(RegExp(r'{\s*,'), '{');

    return cleaned;
  } catch (e) {
    print('Error in fixJson: $e');
    return '{}';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
