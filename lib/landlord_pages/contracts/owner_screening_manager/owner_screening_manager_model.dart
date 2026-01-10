import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'owner_screening_manager_widget.dart' show OwnerScreeningManagerWidget;
import 'package:flutter/material.dart';

class OwnerScreeningManagerModel
    extends FlutterFlowModel<OwnerScreeningManagerWidget> {
  ///  Local state fields for this page.

  int? intIncrement = 0;

  int? kINcriment = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Owner_Screening_Manager widget.
  List<PropertyRecord>? properties;
  // Stores action output result for [Firestore Query - Query a collection] action in Owner_Screening_Manager widget.
  List<UserRecord>? users;
  // Stores action output result for [Custom Action - filterUsersByPropertyRefs] action in Owner_Screening_Manager widget.
  List<DocumentReference>? tenants;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
