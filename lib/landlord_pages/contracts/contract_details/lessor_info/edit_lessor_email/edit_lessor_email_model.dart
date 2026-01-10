import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_email_widget.dart' show EditLessorEmailWidget;
import 'package:flutter/material.dart';

class EditLessorEmailModel extends FlutterFlowModel<EditLessorEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for eMail widget.
  FocusNode? eMailFocusNode;
  TextEditingController? eMailTextController;
  String? Function(BuildContext, String?)? eMailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    eMailFocusNode?.dispose();
    eMailTextController?.dispose();
  }
}
