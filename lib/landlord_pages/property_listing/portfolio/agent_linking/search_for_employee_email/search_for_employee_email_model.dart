import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_for_employee_email_widget.dart'
    show SearchForEmployeeEmailWidget;
import 'package:flutter/material.dart';

class SearchForEmployeeEmailModel
    extends FlutterFlowModel<SearchForEmployeeEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<AgentRecord>? agentEmail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
