import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'screening_builder_name_widget.dart' show ScreeningBuilderNameWidget;
import 'package:flutter/material.dart';

class ScreeningBuilderNameModel
    extends FlutterFlowModel<ScreeningBuilderNameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ScreeningBuilderRecord? screening;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
