import '/flutter_flow/flutter_flow_util.dart';
import 'edit_screening_answer_widget.dart' show EditScreeningAnswerWidget;
import 'package:flutter/material.dart';

class EditScreeningAnswerModel
    extends FlutterFlowModel<EditScreeningAnswerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for electricityRules widget.
  FocusNode? electricityRulesFocusNode1;
  TextEditingController? electricityRulesTextController1;
  String? Function(BuildContext, String?)?
      electricityRulesTextController1Validator;
  // State field(s) for electricityRules widget.
  FocusNode? electricityRulesFocusNode2;
  TextEditingController? electricityRulesTextController2;
  String? Function(BuildContext, String?)?
      electricityRulesTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    electricityRulesFocusNode1?.dispose();
    electricityRulesTextController1?.dispose();

    electricityRulesFocusNode2?.dispose();
    electricityRulesTextController2?.dispose();
  }
}
