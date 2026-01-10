import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'media_preview_widget.dart' show MediaPreviewWidget;
import 'package:flutter/material.dart';

class MediaPreviewModel extends FlutterFlowModel<MediaPreviewWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> receipt = [];
  void addToReceipt(DocumentReference item) => receipt.add(item);
  void removeFromReceipt(DocumentReference item) => receipt.remove(item);
  void removeAtIndexFromReceipt(int index) => receipt.removeAt(index);
  void insertAtIndexInReceipt(int index, DocumentReference item) =>
      receipt.insert(index, item);
  void updateReceiptAtIndex(int index, Function(DocumentReference) updateFn) =>
      receipt[index] = updateFn(receipt[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BroadcastMessagesRecord? message;
  // Stores action output result for [Custom Action - filterUsersToNotify] action in Button widget.
  List<DocumentReference>? noti;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
