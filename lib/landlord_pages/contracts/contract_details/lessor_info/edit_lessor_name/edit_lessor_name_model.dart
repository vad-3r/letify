import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_name_widget.dart' show EditLessorNameWidget;
import 'package:flutter/material.dart';

class EditLessorNameModel extends FlutterFlowModel<EditLessorNameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for lessorName widget.
  FocusNode? lessorNameFocusNode;
  TextEditingController? lessorNameTextController;
  String? Function(BuildContext, String?)? lessorNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lessorNameFocusNode?.dispose();
    lessorNameTextController?.dispose();
  }
}
