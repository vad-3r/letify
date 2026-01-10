import '/flutter_flow/flutter_flow_util.dart';
import 'edit_deposit_fee_widget.dart' show EditDepositFeeWidget;
import 'package:flutter/material.dart';

class EditDepositFeeModel extends FlutterFlowModel<EditDepositFeeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for deposit widget.
  FocusNode? depositFocusNode;
  TextEditingController? depositTextController;
  String? Function(BuildContext, String?)? depositTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    depositFocusNode?.dispose();
    depositTextController?.dispose();
  }
}
