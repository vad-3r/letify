import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_postal_code_widget.dart' show EditLessorPostalCodeWidget;
import 'package:flutter/material.dart';

class EditLessorPostalCodeModel
    extends FlutterFlowModel<EditLessorPostalCodeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for postalCode widget.
  FocusNode? postalCodeFocusNode;
  TextEditingController? postalCodeTextController;
  String? Function(BuildContext, String?)? postalCodeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    postalCodeFocusNode?.dispose();
    postalCodeTextController?.dispose();
  }
}
