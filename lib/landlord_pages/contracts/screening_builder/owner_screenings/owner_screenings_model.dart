import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'owner_screenings_widget.dart' show OwnerScreeningsWidget;
import 'package:flutter/material.dart';

class OwnerScreeningsModel extends FlutterFlowModel<OwnerScreeningsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Owner_Screenings widget.
  List<AgentRecord>? agents;
  // Stores action output result for [Custom Action - docRefConversion] action in Container widget.
  List<ScreeningBuilderQuestionRecord>? questions;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
