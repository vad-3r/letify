import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'search_for_tenant_contracts_widget.dart'
    show SearchForTenantContractsWidget;
import 'package:flutter/material.dart';

class SearchForTenantContractsModel
    extends FlutterFlowModel<SearchForTenantContractsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for idNumber widget.
  FocusNode? idNumberFocusNode;
  TextEditingController? idNumberTextController;
  String? Function(BuildContext, String?)? idNumberTextControllerValidator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode;
  TextEditingController? studentNumberTextController;
  String? Function(BuildContext, String?)? studentNumberTextControllerValidator;
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

    studentNumberFocusNode?.dispose();
    studentNumberTextController?.dispose();
  }
}
