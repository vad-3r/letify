import '/flutter_flow/flutter_flow_util.dart';
import 'edit_acknowledgement_widget.dart' show EditAcknowledgementWidget;
import 'package:flutter/material.dart';

class EditAcknowledgementModel
    extends FlutterFlowModel<EditAcknowledgementWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for electricityRules widget.
  FocusNode? electricityRulesFocusNode;
  TextEditingController? electricityRulesTextController;
  String? Function(BuildContext, String?)?
      electricityRulesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    electricityRulesFocusNode?.dispose();
    electricityRulesTextController?.dispose();
  }
}
