import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_details_widget.dart' show ChatDetailsWidget;
import 'package:flutter/material.dart';

class ChatDetailsModel extends FlutterFlowModel<ChatDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  List<UserRecord>? users;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
