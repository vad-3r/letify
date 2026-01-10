import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'message_universal_new_copy_widget.dart'
    show MessageUniversalNewCopyWidget;
import 'package:flutter/material.dart';

class MessageUniversalNewCopyModel
    extends FlutterFlowModel<MessageUniversalNewCopyWidget> {
  ///  Local state fields for this page.

  bool? timerActive = false;

  DocumentReference? user;

  DocumentReference? userBackUp;

  String? replyText;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  BroadcastMessagesRecord? message1;
  // Stores action output result for [Custom Action - filterUsersToNotify] action in IconButton widget.
  List<DocumentReference>? notifiedRefs1;
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
