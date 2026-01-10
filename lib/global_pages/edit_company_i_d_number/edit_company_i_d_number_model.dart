import '/flutter_flow/flutter_flow_util.dart';
import 'edit_company_i_d_number_widget.dart' show EditCompanyIDNumberWidget;
import 'package:flutter/material.dart';

class EditCompanyIDNumberModel
    extends FlutterFlowModel<EditCompanyIDNumberWidget> {
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
