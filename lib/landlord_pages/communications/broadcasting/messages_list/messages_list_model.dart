import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'messages_list_widget.dart' show MessagesListWidget;
import 'package:flutter/material.dart';

class MessagesListModel extends FlutterFlowModel<MessagesListWidget> {
  ///  Local state fields for this page.

  List<BroadcastsRecord> results = [];
  void addToResults(BroadcastsRecord item) => results.add(item);
  void removeFromResults(BroadcastsRecord item) => results.remove(item);
  void removeAtIndexFromResults(int index) => results.removeAt(index);
  void insertAtIndexInResults(int index, BroadcastsRecord item) =>
      results.insert(index, item);
  void updateResultsAtIndex(int index, Function(BroadcastsRecord) updateFn) =>
      results[index] = updateFn(results[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode;
  TextEditingController? propSearchTextController;
  String? Function(BuildContext, String?)? propSearchTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in propSearch widget.
  List<BroadcastsRecord>? chats;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propSearchFocusNode?.dispose();
    propSearchTextController?.dispose();
  }
}
