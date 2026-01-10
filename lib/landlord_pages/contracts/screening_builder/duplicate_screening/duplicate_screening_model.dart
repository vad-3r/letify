import '/flutter_flow/flutter_flow_util.dart';
import 'duplicate_screening_widget.dart' show DuplicateScreeningWidget;
import 'package:flutter/material.dart';

class DuplicateScreeningModel
    extends FlutterFlowModel<DuplicateScreeningWidget> {
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
