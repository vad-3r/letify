import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_company_i_d_widget.dart' show EditLessorCompanyIDWidget;
import 'package:flutter/material.dart';

class EditLessorCompanyIDModel
    extends FlutterFlowModel<EditLessorCompanyIDWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for companyID widget.
  FocusNode? companyIDFocusNode;
  TextEditingController? companyIDTextController;
  String? Function(BuildContext, String?)? companyIDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    companyIDFocusNode?.dispose();
    companyIDTextController?.dispose();
  }
}
