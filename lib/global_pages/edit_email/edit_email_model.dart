import '/flutter_flow/flutter_flow_util.dart';
import 'edit_email_widget.dart' show EditEmailWidget;
import 'package:flutter/material.dart';

class EditEmailModel extends FlutterFlowModel<EditEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for adminFee widget.
  FocusNode? adminFeeFocusNode;
  TextEditingController? adminFeeTextController;
  String? Function(BuildContext, String?)? adminFeeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    adminFeeFocusNode?.dispose();
    adminFeeTextController?.dispose();
  }
}
