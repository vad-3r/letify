import '/flutter_flow/flutter_flow_util.dart';
import 'delete_info_board_widget.dart' show DeleteInfoBoardWidget;
import 'package:flutter/material.dart';

class DeleteInfoBoardModel extends FlutterFlowModel<DeleteInfoBoardWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> receipt = [];
  void addToReceipt(DocumentReference item) => receipt.add(item);
  void removeFromReceipt(DocumentReference item) => receipt.remove(item);
  void removeAtIndexFromReceipt(int index) => receipt.removeAt(index);
  void insertAtIndexInReceipt(int index, DocumentReference item) =>
      receipt.insert(index, item);
  void updateReceiptAtIndex(int index, Function(DocumentReference) updateFn) =>
      receipt[index] = updateFn(receipt[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
