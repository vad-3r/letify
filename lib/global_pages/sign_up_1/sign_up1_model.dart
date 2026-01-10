import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up1_widget.dart' show SignUp1Widget;
import 'package:flutter/material.dart';

class SignUp1Model extends FlutterFlowModel<SignUp1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  String? _userNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for userSurname widget.
  FocusNode? userSurnameFocusNode;
  TextEditingController? userSurnameTextController;
  String? Function(BuildContext, String?)? userSurnameTextControllerValidator;
  String? _userSurnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Surname is required';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for userPhonenumber widget.
  FocusNode? userPhonenumberFocusNode;
  TextEditingController? userPhonenumberTextController;
  String? Function(BuildContext, String?)?
      userPhonenumberTextControllerValidator;
  String? _userPhonenumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone Number is required';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  String? _passwordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password is required';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    userNameTextControllerValidator = _userNameTextControllerValidator;
    userSurnameTextControllerValidator = _userSurnameTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    userPhonenumberTextControllerValidator =
        _userPhonenumberTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmTextControllerValidator =
        _passwordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    userSurnameFocusNode?.dispose();
    userSurnameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    userPhonenumberFocusNode?.dispose();
    userPhonenumberTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
