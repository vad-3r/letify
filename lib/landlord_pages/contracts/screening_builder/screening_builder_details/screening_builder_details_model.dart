import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'screening_builder_details_widget.dart'
    show ScreeningBuilderDetailsWidget;
import 'package:flutter/material.dart';

class ScreeningBuilderDetailsModel
    extends FlutterFlowModel<ScreeningBuilderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<ScreeningBuilderAnswersRecord, bool> checkboxValueMap = {};
  List<ScreeningBuilderAnswersRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
