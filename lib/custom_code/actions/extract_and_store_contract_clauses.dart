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
import 'package:cloud_firestore/cloud_firestore.dart';

Future extractAndStoreContractClauses(
  DocumentReference parentDocRef,
  dynamic jsonData,
) async {
  // Add your function code here!

  // Enhanced version with data validation and smaller batch sizes
  try {
    print('====================');
    print('DEBUG parentDocRef -> $parentDocRef');
    print('DEBUG parentDocRef path -> ${parentDocRef?.path}');
    print('DEBUG jsonData raw -> $jsonData');
    print('DEBUG jsonData type -> ${jsonData.runtimeType}');
    print('====================');

    if (jsonData == null) {
      throw Exception('jsonData is null.');
    }

    // Check if parentDocRef is valid and has proper path
    if (parentDocRef == null) {
      throw Exception('parentDocRef is null.');
    }

    // Validate parentDocRef path
    final parentPath = parentDocRef.path;
    if (parentPath == null || parentPath.isEmpty) {
      throw Exception('parentDocRef has invalid path.');
    }

    print('✅ Parent document path: $parentPath');

    bool wroteAny = false;
    List<Map<String, dynamic>> itemsToAdd = [];

    // Helper function to validate and sanitize data
    Map<String, dynamic> validateAndSanitizeItem(
        String subClause, dynamic index) {
      // Sanitize subClause
      final cleanSubClause = subClause.trim();
      if (cleanSubClause.isEmpty) {
        throw Exception('Sub_Clause cannot be empty');
      }

      // Validate and convert index
      dynamic cleanIndex;
      if (index is String) {
        // Try to parse as number first
        final parsed = num.tryParse(index);
        cleanIndex = parsed ?? index; // Keep as string if can't parse
      } else if (index is num) {
        cleanIndex = index;
      } else if (index == null) {
        cleanIndex = 0; // Default value
      } else {
        cleanIndex = index.toString(); // Convert to string as fallback
      }

      // Validate field lengths (Firestore has limits)
      if (cleanSubClause.length > 1048487) {
        // Firestore string limit
        throw Exception(
            'Sub_Clause too long: ${cleanSubClause.length} characters');
      }

      return {
        'Sub_Clause': cleanSubClause,
        'Index': cleanIndex,
        'created_at': FieldValue.serverTimestamp(),
      };
    }

    // 🔹 Case 1: String → decode to JSON
    if (jsonData is String) {
      if (jsonData.trim().isEmpty) {
        throw Exception('jsonData string is empty.');
      }

      try {
        final decoded = jsonDecode(jsonData);
        print('🔍 Decoded JSON type: ${decoded.runtimeType}');

        if (decoded is Map) {
          final dataMap = Map<String, dynamic>.from(decoded);
          print('🔍 Map has ${dataMap.length} entries');

          for (final entry in dataMap.entries) {
            try {
              final item =
                  validateAndSanitizeItem(entry.key.toString(), entry.value);
              itemsToAdd.add(item);
              print('📋 Prepared: ${item['Sub_Clause']} -> ${item['Index']}');
            } catch (e) {
              print('⚠️ Skipping invalid entry: ${entry.key} -> $e');
            }
          }
        } else if (decoded is List) {
          print('🔍 List has ${decoded.length} items');

          for (int i = 0; i < decoded.length; i++) {
            final item = decoded[i];
            if (item is Map) {
              try {
                final validatedItem = validateAndSanitizeItem(
                    item['Sub_Clause']?.toString() ?? '', item['Index']);
                itemsToAdd.add(validatedItem);
                print(
                    '📋 Prepared: ${validatedItem['Sub_Clause']} -> ${validatedItem['Index']}');
              } catch (e) {
                print('⚠️ Skipping invalid list item $i: $e');
              }
            }
          }
        } else {
          throw Exception(
              'Unsupported decoded JSON type: ${decoded.runtimeType}');
        }
      } catch (e) {
        throw Exception('Failed to parse JSON string: $e');
      }
    }

    // 🔹 Case 2: Direct Map
    else if (jsonData is Map) {
      final dataMap = Map<String, dynamic>.from(jsonData);
      print('🔍 Direct Map has ${dataMap.length} entries');

      for (final entry in dataMap.entries) {
        try {
          final item =
              validateAndSanitizeItem(entry.key.toString(), entry.value);
          itemsToAdd.add(item);
          print('📋 Prepared: ${item['Sub_Clause']} -> ${item['Index']}');
        } catch (e) {
          print('⚠️ Skipping invalid map entry: ${entry.key} -> $e');
        }
      }
    }

    // 🔹 Case 3: Direct List of Maps
    else if (jsonData is List) {
      print('🔍 Direct List has ${jsonData.length} items');

      for (int i = 0; i < jsonData.length; i++) {
        final item = jsonData[i];
        if (item is Map) {
          try {
            final validatedItem = validateAndSanitizeItem(
                item['Sub_Clause']?.toString() ?? '', item['Index']);
            itemsToAdd.add(validatedItem);
            print(
                '📋 Prepared: ${validatedItem['Sub_Clause']} -> ${validatedItem['Index']}');
          } catch (e) {
            print('⚠️ Skipping invalid list item $i: $e');
          }
        }
      }
    } else {
      throw Exception('Unsupported jsonData type: ${jsonData.runtimeType}');
    }

    if (itemsToAdd.isEmpty) {
      print('⚠️ No valid subclauses found after validation.');
      return;
    }

    print('🚀 Ready to write ${itemsToAdd.length} validated items');

    // 🔥 Use smaller batches to avoid 400 errors (Firestore batch limit is 500)
    const int batchSize = 100; // Conservative batch size
    final collection = parentDocRef.collection('Contract_Builder_Sub_Clause');

    for (int i = 0; i < itemsToAdd.length; i += batchSize) {
      final end = (i + batchSize < itemsToAdd.length)
          ? i + batchSize
          : itemsToAdd.length;
      final batchItems = itemsToAdd.sublist(i, end);

      print('📦 Processing batch ${(i ~/ batchSize) + 1}: items ${i + 1}-$end');

      // Try batch write first
      bool batchSuccess = false;

      try {
        final batch = FirebaseFirestore.instance.batch();

        for (final item in batchItems) {
          final docRef = collection.doc();
          batch.set(docRef, item);
        }

        await batch.commit();
        batchSuccess = true;
        wroteAny = true;
        print(
            '✅ Batch ${(i ~/ batchSize) + 1} successful: ${batchItems.length} items');
      } catch (batchError) {
        print('❌ Batch ${(i ~/ batchSize) + 1} failed: $batchError');

        // Fallback to individual writes with detailed error logging
        print(
            '🔄 Attempting individual writes for batch ${(i ~/ batchSize) + 1}...');

        for (int j = 0; j < batchItems.length; j++) {
          final item = batchItems[j];
          try {
            // Add extra validation before individual write
            if (item['Sub_Clause'] == null ||
                item['Sub_Clause'].toString().trim().isEmpty) {
              print('⚠️ Skipping item with empty Sub_Clause at position $j');
              continue;
            }

            final docRef = await collection.add(item);
            wroteAny = true;
            print(
                '✅ Individual write ${j + 1}/${batchItems.length}: ${item['Sub_Clause']} (${docRef.id})');

            // Small delay to avoid overwhelming Firestore
            if (j < batchItems.length - 1) {
              await Future.delayed(Duration(milliseconds: 50));
            }
          } catch (individualError) {
            print('❌ Individual write failed for item $j: $individualError');
            print('🔍 Failed item data: $item');

            // Continue with other items even if one fails
          }
        }
      }

      // Delay between batches to avoid rate limiting
      if (end < itemsToAdd.length) {
        await Future.delayed(Duration(milliseconds: 200));
      }
    }

    if (!wroteAny) {
      throw Exception('Failed to write any subclauses to Firestore');
    }

    print('🎉 Operation completed successfully');
  } catch (e, st) {
    print('❌ Error in extractAndStoreContractClauses: $e');
    print('📍 Stack trace: $st');

    // Enhanced debugging information
    print('🔍 Enhanced Debug Info:');
    print('- parentDocRef: $parentDocRef');
    print('- parentDocRef path: ${parentDocRef?.path}');
    print('- parentDocRef exists: ${parentDocRef != null}');
    print('- jsonData: $jsonData');
    print('- jsonData type: ${jsonData?.runtimeType}');
    print('- jsonData length: ${jsonData?.toString().length}');

    if (jsonData is String) {
      print(
          '- First 200 chars of jsonData: ${jsonData.toString().substring(0, jsonData.toString().length > 200 ? 200 : jsonData.toString().length)}');
    }

    rethrow;
  }
}
