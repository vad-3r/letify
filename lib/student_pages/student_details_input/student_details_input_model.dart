import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'student_details_input_widget.dart' show StudentDetailsInputWidget;
import 'package:flutter/material.dart';

class StudentDetailsInputModel
    extends FlutterFlowModel<StudentDetailsInputWidget> {
  ///  Local state fields for this component.

  bool exists = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ID_Num widget.
  FocusNode? iDNumFocusNode;
  TextEditingController? iDNumTextController;
  String? Function(BuildContext, String?)? iDNumTextControllerValidator;
  String? _iDNumTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ID Number is required';
    }

    return null;
  }

  // State field(s) for institution widget.
  String? institutionValue;
  FormFieldController<String>? institutionValueController;
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

  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  DateTime? datePicked;
  // Stores action output result for [Firestore Query - Query a collection] action in createStudentAccount widget.
  List<StudentRecord>? studentsAllNumber;
  // Stores action output result for [Firestore Query - Query a collection] action in createStudentAccount widget.
  List<StudentRecord>? studentIDNum;
  // Stores action output result for [Backend Call - Create Document] action in createStudentAccount widget.
  StudentRecord? studentCreate;
  // Stores action output result for [Firestore Query - Query a collection] action in createStudentAccount widget.
  PrelinkedTenantsRecord? prelink;

  @override
  void initState(BuildContext context) {
    iDNumTextControllerValidator = _iDNumTextControllerValidator;
    studentNumTextControllerValidator = _studentNumTextControllerValidator;
  }

  @override
  void dispose() {
    iDNumFocusNode?.dispose();
    iDNumTextController?.dispose();

    studentNumFocusNode?.dispose();
    studentNumTextController?.dispose();
  }
}
