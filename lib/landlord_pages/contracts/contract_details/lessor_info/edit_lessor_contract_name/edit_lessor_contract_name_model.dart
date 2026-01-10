import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_contract_name_widget.dart'
    show EditLessorContractNameWidget;
import 'package:flutter/material.dart';

class EditLessorContractNameModel
    extends FlutterFlowModel<EditLessorContractNameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for contractName widget.
  FocusNode? contractNameFocusNode;
  TextEditingController? contractNameTextController;
  String? Function(BuildContext, String?)? contractNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    contractNameFocusNode?.dispose();
    contractNameTextController?.dispose();
  }
}
