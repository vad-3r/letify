import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_email_widget.dart' show ForgotEmailWidget;
import 'package:flutter/material.dart';

class ForgotEmailModel extends FlutterFlowModel<ForgotEmailWidget> {
  ///  Local state fields for this component.

  bool? exists = true;

  bool? existss = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserRecord>? userEmails;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
