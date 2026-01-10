import '/flutter_flow/flutter_flow_util.dart';
import 'landlord_details_input_widget.dart' show LandlordDetailsInputWidget;
import 'package:flutter/material.dart';

class LandlordDetailsInputModel
    extends FlutterFlowModel<LandlordDetailsInputWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  String? _yourNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for yourSurname widget.
  FocusNode? yourSurnameFocusNode;
  TextEditingController? yourSurnameTextController;
  String? Function(BuildContext, String?)? yourSurnameTextControllerValidator;
  String? _yourSurnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Surname is required';
    }

    return null;
  }

  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailTextController;
  String? Function(BuildContext, String?)? yourEmailTextControllerValidator;
  String? _yourEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for companyID widget.
  FocusNode? companyIDFocusNode;
  TextEditingController? companyIDTextController;
  String? Function(BuildContext, String?)? companyIDTextControllerValidator;

  @override
  void initState(BuildContext context) {
    yourNameTextControllerValidator = _yourNameTextControllerValidator;
    yourSurnameTextControllerValidator = _yourSurnameTextControllerValidator;
    yourEmailTextControllerValidator = _yourEmailTextControllerValidator;
  }

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourSurnameFocusNode?.dispose();
    yourSurnameTextController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailTextController?.dispose();

    companyIDFocusNode?.dispose();
    companyIDTextController?.dispose();
  }
}
