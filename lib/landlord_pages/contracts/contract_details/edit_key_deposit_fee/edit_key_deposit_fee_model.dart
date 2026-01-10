import '/flutter_flow/flutter_flow_util.dart';
import 'edit_key_deposit_fee_widget.dart' show EditKeyDepositFeeWidget;
import 'package:flutter/material.dart';

class EditKeyDepositFeeModel extends FlutterFlowModel<EditKeyDepositFeeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for keyDeposit widget.
  FocusNode? keyDepositFocusNode;
  TextEditingController? keyDepositTextController;
  String? Function(BuildContext, String?)? keyDepositTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    keyDepositFocusNode?.dispose();
    keyDepositTextController?.dispose();
  }
}
