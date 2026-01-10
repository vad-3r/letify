import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_message_options_widget.dart' show UserMessageOptionsWidget;
import 'package:flutter/material.dart';

class UserMessageOptionsModel
    extends FlutterFlowModel<UserMessageOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  List<BroadcastsRecord>? messagesFromMe;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  List<BroadcastsRecord>? messagesFromThem;
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  BroadcastsRecord? chatCreate;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
