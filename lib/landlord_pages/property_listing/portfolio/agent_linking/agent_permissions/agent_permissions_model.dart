import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'agent_permissions_widget.dart' show AgentPermissionsWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class AgentPermissionsModel extends FlutterFlowModel<AgentPermissionsWidget> {
  ///  Local state fields for this page.

  bool selectedCheckboxSharing = true;

  bool selectedCheckboxSingle = true;

  bool selectedCheckboxFlat = true;

  bool selectedCheckboxBachlor = true;

  bool selectedCheckboxHouse = true;

  bool selectedCheckboxCommercial = true;

  String buttonName = 'Save';

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? ports;
  // State field(s) for createContracts widget.
  Map<UserRecord, bool> createContractsValueMap = {};
  List<UserRecord> get createContractsCheckedItems =>
      createContractsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteContracts widget.
  Map<UserRecord, bool> deleteContractsValueMap = {};
  List<UserRecord> get deleteContractsCheckedItems =>
      deleteContractsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for linkContracts widget.
  Map<UserRecord, bool> linkContractsValueMap = {};
  List<UserRecord> get linkContractsCheckedItems =>
      linkContractsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for delinkContracts widget.
  Map<UserRecord, bool> delinkContractsValueMap = {};
  List<UserRecord> get delinkContractsCheckedItems =>
      delinkContractsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for overideContracts widget.
  Map<UserRecord, bool> overideContractsValueMap = {};
  List<UserRecord> get overideContractsCheckedItems =>
      overideContractsValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for linkTenants widget.
  Map<UserRecord, bool> linkTenantsValueMap1 = {};
  List<UserRecord> get linkTenantsCheckedItems1 => linkTenantsValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for delinkTenants widget.
  Map<UserRecord, bool> delinkTenantsValueMap1 = {};
  List<UserRecord> get delinkTenantsCheckedItems1 =>
      delinkTenantsValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteUnits widget.
  Map<UserRecord, bool> deleteUnitsValueMap1 = {};
  List<UserRecord> get deleteUnitsCheckedItems1 => deleteUnitsValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for fixitAccess widget.
  Map<UserRecord, bool> fixitAccessValueMap = {};
  List<UserRecord> get fixitAccessCheckedItems => fixitAccessValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for createGroups widget.
  Map<UserRecord, bool> createGroupsValueMap = {};
  List<UserRecord> get createGroupsCheckedItems => createGroupsValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for createProperties widget.
  Map<UserRecord, bool> createPropertiesValueMap1 = {};
  List<UserRecord> get createPropertiesCheckedItems1 =>
      createPropertiesValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteProperties widget.
  Map<UserRecord, bool> deletePropertiesValueMap1 = {};
  List<UserRecord> get deletePropertiesCheckedItems1 =>
      deletePropertiesValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? ports1;
  // State field(s) for createContracts1 widget.
  Map<UserRecord, bool> createContracts1ValueMap = {};
  List<UserRecord> get createContracts1CheckedItems =>
      createContracts1ValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteContracts1 widget.
  Map<UserRecord, bool> deleteContracts1ValueMap = {};
  List<UserRecord> get deleteContracts1CheckedItems =>
      deleteContracts1ValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for linkContracts1 widget.
  Map<UserRecord, bool> linkContracts1ValueMap = {};
  List<UserRecord> get linkContracts1CheckedItems =>
      linkContracts1ValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for overrideContracts1 widget.
  Map<UserRecord, bool> overrideContracts1ValueMap = {};
  List<UserRecord> get overrideContracts1CheckedItems =>
      overrideContracts1ValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? ports3;
  // State field(s) for createProperties widget.
  Map<UserRecord, bool> createPropertiesValueMap2 = {};
  List<UserRecord> get createPropertiesCheckedItems2 =>
      createPropertiesValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteProperties widget.
  Map<UserRecord, bool> deletePropertiesValueMap2 = {};
  List<UserRecord> get deletePropertiesCheckedItems2 =>
      deletePropertiesValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for deleteUnits widget.
  Map<UserRecord, bool> deleteUnitsValueMap2 = {};
  List<UserRecord> get deleteUnitsCheckedItems2 => deleteUnitsValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? ports2;
  // State field(s) for linkTenants widget.
  Map<UserRecord, bool> linkTenantsValueMap2 = {};
  List<UserRecord> get linkTenantsCheckedItems2 => linkTenantsValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for delinkTenants widget.
  Map<UserRecord, bool> delinkTenantsValueMap2 = {};
  List<UserRecord> get delinkTenantsCheckedItems2 =>
      delinkTenantsValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? ports4;
  // State field(s) for linkTenants widget.
  Map<UserRecord, bool> linkTenantsValueMap3 = {};
  List<UserRecord> get linkTenantsCheckedItems3 => linkTenantsValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
