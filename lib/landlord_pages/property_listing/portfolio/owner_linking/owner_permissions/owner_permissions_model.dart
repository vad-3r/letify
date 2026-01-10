import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'owner_permissions_widget.dart' show OwnerPermissionsWidget;
import 'package:flutter/material.dart';

class OwnerPermissionsModel extends FlutterFlowModel<OwnerPermissionsWidget> {
  ///  Local state fields for this page.

  bool selectedCheckboxSharing = true;

  bool selectedCheckboxSingle = true;

  bool selectedCheckboxFlat = true;

  bool selectedCheckboxBachlor = true;

  bool selectedCheckboxHouse = true;

  bool selectedCheckboxCommercial = true;

  String buttonName = 'Save';

  ///  State fields for stateful widgets in this page.

  // State field(s) for viewGroups widget.
  Map<LandlordRecord, bool> viewGroupsValueMap = {};
  List<LandlordRecord> get viewGroupsCheckedItems => viewGroupsValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for replyToGroups widget.
  Map<LandlordRecord, bool> replyToGroupsValueMap = {};
  List<LandlordRecord> get replyToGroupsCheckedItems =>
      replyToGroupsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for linkTenants widget.
  Map<LandlordRecord, bool> linkTenantsValueMap = {};
  List<LandlordRecord> get linkTenantsCheckedItems =>
      linkTenantsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for delinkTenants widget.
  Map<LandlordRecord, bool> delinkTenantsValueMap = {};
  List<LandlordRecord> get delinkTenantsCheckedItems =>
      delinkTenantsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteUnits widget.
  Map<LandlordRecord, bool> deleteUnitsValueMap = {};
  List<LandlordRecord> get deleteUnitsCheckedItems =>
      deleteUnitsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for createProperties widget.
  Map<LandlordRecord, bool> createPropertiesValueMap = {};
  List<LandlordRecord> get createPropertiesCheckedItems =>
      createPropertiesValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteProperties widget.
  Map<LandlordRecord, bool> deletePropertiesValueMap = {};
  List<LandlordRecord> get deletePropertiesCheckedItems =>
      deletePropertiesValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
