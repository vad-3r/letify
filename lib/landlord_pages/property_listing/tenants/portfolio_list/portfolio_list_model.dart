import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'portfolio_list_widget.dart' show PortfolioListWidget;
import 'package:flutter/material.dart';

class PortfolioListModel extends FlutterFlowModel<PortfolioListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for idNumber widget.
  FocusNode? idNumberFocusNode;
  TextEditingController? idNumberTextController;
  String? Function(BuildContext, String?)? idNumberTextControllerValidator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode1;
  TextEditingController? studentNumberTextController1;
  String? Function(BuildContext, String?)?
      studentNumberTextController1Validator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode2;
  TextEditingController? studentNumberTextController2;
  String? Function(BuildContext, String?)?
      studentNumberTextController2Validator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode3;
  TextEditingController? studentNumberTextController3;
  String? Function(BuildContext, String?)?
      studentNumberTextController3Validator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode4;
  TextEditingController? studentNumberTextController4;
  String? Function(BuildContext, String?)?
      studentNumberTextController4Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    idNumberFocusNode?.dispose();
    idNumberTextController?.dispose();

    studentNumberFocusNode1?.dispose();
    studentNumberTextController1?.dispose();

    studentNumberFocusNode2?.dispose();
    studentNumberTextController2?.dispose();

    studentNumberFocusNode3?.dispose();
    studentNumberTextController3?.dispose();

    studentNumberFocusNode4?.dispose();
    studentNumberTextController4?.dispose();
  }
}
