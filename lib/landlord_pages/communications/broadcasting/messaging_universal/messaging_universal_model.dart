import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'messaging_universal_widget.dart' show MessagingUniversalWidget;
import 'package:flutter/material.dart';

class MessagingUniversalModel
    extends FlutterFlowModel<MessagingUniversalWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Messaging_Universal widget.
  BroadcastsRecord? broad;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  BroadcastMessagesRecord? message;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
