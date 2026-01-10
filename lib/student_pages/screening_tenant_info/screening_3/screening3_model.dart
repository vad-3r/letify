import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'screening3_widget.dart' show Screening3Widget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class Screening3Model extends FlutterFlowModel<Screening3Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for screeningSignature widget.
  SignatureController? screeningSignatureController;
  // State field(s) for signatureAgreement widget.
  bool? signatureAgreementValue;
  String uploadedSignatureUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    screeningSignatureController?.dispose();
  }
}
