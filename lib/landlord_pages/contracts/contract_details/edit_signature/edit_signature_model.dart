import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_signature_widget.dart' show EditSignatureWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class EditSignatureModel extends FlutterFlowModel<EditSignatureWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for selectChoice widget.
  String? selectChoiceValue;
  FormFieldController<String>? selectChoiceValueController;
  // State field(s) for Signature widget.
  SignatureController? signatureController;
  bool isDataUploading_primarySignature = false;
  FFUploadedFile uploadedLocalFile_primarySignature =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_primarySignature = '';

  String uploadedSignatureUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signatureController?.dispose();
  }
}
