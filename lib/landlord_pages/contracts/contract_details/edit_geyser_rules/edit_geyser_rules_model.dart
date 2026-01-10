import '/flutter_flow/flutter_flow_util.dart';
import 'edit_geyser_rules_widget.dart' show EditGeyserRulesWidget;
import 'package:flutter/material.dart';

class EditGeyserRulesModel extends FlutterFlowModel<EditGeyserRulesWidget> {
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
