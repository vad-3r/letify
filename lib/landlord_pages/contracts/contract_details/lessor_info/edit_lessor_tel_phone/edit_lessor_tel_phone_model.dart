import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_tel_phone_widget.dart' show EditLessorTelPhoneWidget;
import 'package:flutter/material.dart';

class EditLessorTelPhoneModel
    extends FlutterFlowModel<EditLessorTelPhoneWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for telNumber widget.
  FocusNode? telNumberFocusNode;
  TextEditingController? telNumberTextController;
  String? Function(BuildContext, String?)? telNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    telNumberFocusNode?.dispose();
    telNumberTextController?.dispose();
  }
}
