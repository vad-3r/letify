import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_suburb_widget.dart' show EditLessorSuburbWidget;
import 'package:flutter/material.dart';

class EditLessorSuburbModel extends FlutterFlowModel<EditLessorSuburbWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for suburb widget.
  FocusNode? suburbFocusNode;
  TextEditingController? suburbTextController;
  String? Function(BuildContext, String?)? suburbTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    suburbFocusNode?.dispose();
    suburbTextController?.dispose();
  }
}
