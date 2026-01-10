import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'contract_manager_widget.dart' show ContractManagerWidget;
import 'package:flutter/material.dart';

class ContractManagerModel extends FlutterFlowModel<ContractManagerWidget> {
  ///  Local state fields for this page.

  int? intIncrement = 0;

  int? kINcriment = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Contract_Manager widget.
  List<PropertyRecord>? properties;
  // Stores action output result for [Firestore Query - Query a collection] action in Contract_Manager widget.
  List<UserRecord>? users;
  // Stores action output result for [Custom Action - filterUsersByPropertyRefs] action in Contract_Manager widget.
  List<DocumentReference>? tenants;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
