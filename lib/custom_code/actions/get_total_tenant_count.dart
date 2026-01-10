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

Future<int> getTotalTenantCount(DocumentReference landlordRef) async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance
      .collection('Contract')
      .where('landlord_id', isEqualTo: landlordRef)
      .get();

  int totalTenantCount = 0;

  for (var contractDoc in querySnapshot.docs) {
    if (contractDoc.data() != null &&
        contractDoc.data() is Map<String, dynamic>) {
      Map<String, dynamic> contractData =
          contractDoc.data() as Map<String, dynamic>;

      // Get the tenants list if it exists, otherwise use an empty list
      List<dynamic> tenantsLinked = contractData.containsKey('tenants_linked')
          ? contractData['tenants_linked']
          : [];

      totalTenantCount += tenantsLinked.length;
    }
  }
  return totalTenantCount;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
