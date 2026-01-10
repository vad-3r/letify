import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_employee_widget.dart' show AddEmployeeWidget;
import 'package:flutter/material.dart';

class AddEmployeeModel extends FlutterFlowModel<AddEmployeeWidget> {
  ///  Local state fields for this page.

  bool emptyText = true;

  int selectNum = 0;

  List<DocumentReference> addedPeaple = [];
  void addToAddedPeaple(DocumentReference item) => addedPeaple.add(item);
  void removeFromAddedPeaple(DocumentReference item) =>
      addedPeaple.remove(item);
  void removeAtIndexFromAddedPeaple(int index) => addedPeaple.removeAt(index);
  void insertAtIndexInAddedPeaple(int index, DocumentReference item) =>
      addedPeaple.insert(index, item);
  void updateAddedPeapleAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      addedPeaple[index] = updateFn(addedPeaple[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<UserRecord, bool> checkboxValueMap = {};
  List<UserRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
