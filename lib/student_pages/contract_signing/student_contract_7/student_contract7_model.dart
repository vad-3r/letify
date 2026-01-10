import '/flutter_flow/flutter_flow_util.dart';
import 'student_contract7_widget.dart' show StudentContract7Widget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class StudentContract7Model extends FlutterFlowModel<StudentContract7Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Signature widget.
  SignatureController? signatureController;
  // State field(s) for signatureAgreement widget.
  bool? signatureAgreementValue;
  String uploadedSignatureUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signatureController?.dispose();
  }
}
