import '/flutter_flow/flutter_flow_util.dart';
import 'edit_refundable_fee_widget.dart' show EditRefundableFeeWidget;
import 'package:flutter/material.dart';

class EditRefundableFeeModel extends FlutterFlowModel<EditRefundableFeeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for refundableFee widget.
  FocusNode? refundableFeeFocusNode;
  TextEditingController? refundableFeeTextController;
  String? Function(BuildContext, String?)? refundableFeeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    refundableFeeFocusNode?.dispose();
    refundableFeeTextController?.dispose();
  }
}
