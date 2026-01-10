import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'link_tenant_i_d_widget.dart' show LinkTenantIDWidget;
import 'package:flutter/material.dart';

class LinkTenantIDModel extends FlutterFlowModel<LinkTenantIDWidget> {
  ///  Local state fields for this page.

  List<StudentRecord> lstStudent = [];
  void addToLstStudent(StudentRecord item) => lstStudent.add(item);
  void removeFromLstStudent(StudentRecord item) => lstStudent.remove(item);
  void removeAtIndexFromLstStudent(int index) => lstStudent.removeAt(index);
  void insertAtIndexInLstStudent(int index, StudentRecord item) =>
      lstStudent.insert(index, item);
  void updateLstStudentAtIndex(int index, Function(StudentRecord) updateFn) =>
      lstStudent[index] = updateFn(lstStudent[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Link_TenantID widget.
  List<StudentRecord>? lstStudentsID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
