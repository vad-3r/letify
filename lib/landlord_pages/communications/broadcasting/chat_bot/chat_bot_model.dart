import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_bot_widget.dart' show ChatBotWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ChatBotModel extends FlutterFlowModel<ChatBotWidget> {
  ///  Local state fields for this page.

  bool? timerActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, ChatbotMesssagesRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatbotMesssagesRecord? userMessage;
  // Stores action output result for [Backend Call - API (sendChatMessage)] action in IconButton widget.
  ApiCallResponse? apiResult18l;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ChatbotMesssagesRecord>
      setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, ChatbotMesssagesRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ChatbotMesssagesRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryChatbotMesssagesRecordPage(
          parent: parent,
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 10,
          isStream: true,
        ),
      );
  }
}
