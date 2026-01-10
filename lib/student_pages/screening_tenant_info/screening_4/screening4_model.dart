import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'screening4_widget.dart' show Screening4Widget;
import 'package:flutter/material.dart';

class Screening4Model extends FlutterFlowModel<Screening4Widget> {
  ///  Local state fields for this page.

  bool? firstRecievedNumbersOnly;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for currentYOS widget.
  String? currentYOSValue;
  FormFieldController<String>? currentYOSValueController;
  // State field(s) for firstRegistration widget.
  FocusNode? firstRegistrationFocusNode;
  TextEditingController? firstRegistrationTextController;
  String? Function(BuildContext, String?)?
      firstRegistrationTextControllerValidator;
  String? _firstRegistrationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Year is required';
    }

    return null;
  }

  // State field(s) for fundingPreviousYear widget.
  String? fundingPreviousYearValue;
  FormFieldController<String>? fundingPreviousYearValueController;
  // State field(s) for fundingCurrentYear widget.
  String? fundingCurrentYearValue;
  FormFieldController<String>? fundingCurrentYearValueController;
  // State field(s) for yearFirstRecievedFunding widget.
  FocusNode? yearFirstRecievedFundingFocusNode;
  TextEditingController? yearFirstRecievedFundingTextController;
  String? Function(BuildContext, String?)?
      yearFirstRecievedFundingTextControllerValidator;
  // Stores action output result for [Custom Action - isStringInput] action in yearFirstRecievedFunding widget.
  bool? isInt;
  // State field(s) for fundingConfirmationMethod widget.
  String? fundingConfirmationMethodValue;
  FormFieldController<String>? fundingConfirmationMethodValueController;
  // State field(s) for outstandingFees widget.
  String? outstandingFeesValue;
  FormFieldController<String>? outstandingFeesValueController;
  // State field(s) for institution widget.
  String? institutionValue;
  FormFieldController<String>? institutionValueController;
  // State field(s) for cours widget.
  FocusNode? coursFocusNode;
  TextEditingController? coursTextController;
  String? Function(BuildContext, String?)? coursTextControllerValidator;
  String? _coursTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Course is required';
    }

    return null;
  }

  // State field(s) for courseDuration widget.
  String? courseDurationValue;
  FormFieldController<String>? courseDurationValueController;
  // State field(s) for program widget.
  String? programValue;
  FormFieldController<String>? programValueController;
  // State field(s) for offCampusPracs widget.
  String? offCampusPracsValue;
  FormFieldController<String>? offCampusPracsValueController;
  // State field(s) for onlineClasses widget.
  String? onlineClassesValue;
  FormFieldController<String>? onlineClassesValueController;
  // State field(s) for modulesPassed widget.
  String? modulesPassedValue;
  FormFieldController<String>? modulesPassedValueController;
  // State field(s) for apMark widget.
  FocusNode? apMarkFocusNode;
  TextEditingController? apMarkTextController;
  String? Function(BuildContext, String?)? apMarkTextControllerValidator;
  String? _apMarkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'AP mark is required';
    }

    return null;
  }

  // State field(s) for coursesChanged widget.
  String? coursesChangedValue;
  FormFieldController<String>? coursesChangedValueController;
  // State field(s) for campusChange widget.
  String? campusChangeValue;
  FormFieldController<String>? campusChangeValueController;
  // State field(s) for semesterRegistered widget.
  String? semesterRegisteredValue;
  FormFieldController<String>? semesterRegisteredValueController;
  // State field(s) for previousAccommodation widget.
  String? previousAccommodationValue;
  FormFieldController<String>? previousAccommodationValueController;
  // State field(s) for appeal widget.
  String? appealValue;
  FormFieldController<String>? appealValueController;
  // State field(s) for annexureBAgreement widget.
  bool? annexureBAgreementValue;

  @override
  void initState(BuildContext context) {
    firstRegistrationTextControllerValidator =
        _firstRegistrationTextControllerValidator;
    coursTextControllerValidator = _coursTextControllerValidator;
    apMarkTextControllerValidator = _apMarkTextControllerValidator;
  }

  @override
  void dispose() {
    firstRegistrationFocusNode?.dispose();
    firstRegistrationTextController?.dispose();

    yearFirstRecievedFundingFocusNode?.dispose();
    yearFirstRecievedFundingTextController?.dispose();

    coursFocusNode?.dispose();
    coursTextController?.dispose();

    apMarkFocusNode?.dispose();
    apMarkTextController?.dispose();
  }
}
