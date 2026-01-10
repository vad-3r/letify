import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_widget.dart' show LinkWidget;
import 'package:flutter/material.dart';

class LinkModel extends FlutterFlowModel<LinkWidget> {
  ///  Local state fields for this component.

  bool alreadyLinked = false;

  bool? doesNotExist = false;

  bool? isBooking = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Student_Num widget.
  FocusNode? studentNumFocusNode;
  TextEditingController? studentNumTextController;
  String? Function(BuildContext, String?)? studentNumTextControllerValidator;
  String? _studentNumTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Student Number is required';
    }

    return null;
  }

  // State field(s) for tenantEmail widget.
  FocusNode? tenantEmailFocusNode;
  TextEditingController? tenantEmailTextController;
  String? Function(BuildContext, String?)? tenantEmailTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  StudentRecord? student;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserRecord? userCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in createStudentAccount widget.
  List<StudentRecord>? studentsOnSystem;
  // Stores action output result for [Firestore Query - Query a collection] action in createStudentAccount widget.
  UserRecord? user;

  @override
  void initState(BuildContext context) {
    studentNumTextControllerValidator = _studentNumTextControllerValidator;
  }

  @override
  void dispose() {
    studentNumFocusNode?.dispose();
    studentNumTextController?.dispose();

    tenantEmailFocusNode?.dispose();
    tenantEmailTextController?.dispose();
  }
}
