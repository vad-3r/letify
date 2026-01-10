import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'link_tenant_student_num_widget.dart' show LinkTenantStudentNumWidget;
import 'package:flutter/material.dart';

class LinkTenantStudentNumModel
    extends FlutterFlowModel<LinkTenantStudentNumWidget> {
  ///  Local state fields for this page.

  List<StudentRecord> lstStudents = [];
  void addToLstStudents(StudentRecord item) => lstStudents.add(item);
  void removeFromLstStudents(StudentRecord item) => lstStudents.remove(item);
  void removeAtIndexFromLstStudents(int index) => lstStudents.removeAt(index);
  void insertAtIndexInLstStudents(int index, StudentRecord item) =>
      lstStudents.insert(index, item);
  void updateLstStudentsAtIndex(int index, Function(StudentRecord) updateFn) =>
      lstStudents[index] = updateFn(lstStudents[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Link_Tenant_Student_Num widget.
  List<StudentRecord>? lstStudentss;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
