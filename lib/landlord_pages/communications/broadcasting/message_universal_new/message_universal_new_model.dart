import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'message_universal_new_widget.dart' show MessageUniversalNewWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MessageUniversalNewModel
    extends FlutterFlowModel<MessageUniversalNewWidget> {
  ///  Local state fields for this page.

  bool? timerActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, BroadcastMessagesRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

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
  PagingController<DocumentSnapshot?, BroadcastMessagesRecord>
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

  PagingController<DocumentSnapshot?, BroadcastMessagesRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, BroadcastMessagesRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryBroadcastMessagesRecordPage(
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
