import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'message_universal_back_to_dash_widget.dart'
    show MessageUniversalBackToDashWidget;
import 'package:flutter/material.dart';

class MessageUniversalBackToDashModel
    extends FlutterFlowModel<MessageUniversalBackToDashWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  BroadcastMessagesRecord? message;
  // Stores action output result for [Custom Action - filterUsersToNotify] action in IconButton widget.
  List<DocumentReference>? notifiedRefs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
