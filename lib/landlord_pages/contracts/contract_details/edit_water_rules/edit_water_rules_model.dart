import '/flutter_flow/flutter_flow_util.dart';
import 'edit_water_rules_widget.dart' show EditWaterRulesWidget;
import 'package:flutter/material.dart';

class EditWaterRulesModel extends FlutterFlowModel<EditWaterRulesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for waterRules widget.
  FocusNode? waterRulesFocusNode;
  TextEditingController? waterRulesTextController;
  String? Function(BuildContext, String?)? waterRulesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    waterRulesFocusNode?.dispose();
    waterRulesTextController?.dispose();
  }
}
