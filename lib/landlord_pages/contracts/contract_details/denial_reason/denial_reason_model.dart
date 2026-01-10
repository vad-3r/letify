import '/flutter_flow/flutter_flow_util.dart';
import 'denial_reason_widget.dart' show DenialReasonWidget;
import 'package:flutter/material.dart';

class DenialReasonModel extends FlutterFlowModel<DenialReasonWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for rent widget.
  FocusNode? rentFocusNode;
  TextEditingController? rentTextController;
  String? Function(BuildContext, String?)? rentTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rentFocusNode?.dispose();
    rentTextController?.dispose();
  }
}
