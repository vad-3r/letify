import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'student_contract_details_input_widget.dart'
    show StudentContractDetailsInputWidget;
import 'package:flutter/material.dart';

class StudentContractDetailsInputModel
    extends FlutterFlowModel<StudentContractDetailsInputWidget> {
  ///  Local state fields for this page.

  List<String> listTopTen = [];
  void addToListTopTen(String item) => listTopTen.add(item);
  void removeFromListTopTen(String item) => listTopTen.remove(item);
  void removeAtIndexFromListTopTen(int index) => listTopTen.removeAt(index);
  void insertAtIndexInListTopTen(int index, String item) =>
      listTopTen.insert(index, item);
  void updateListTopTenAtIndex(int index, Function(String) updateFn) =>
      listTopTen[index] = updateFn(listTopTen[index]);

  bool selectedGroup1 = true;

  bool selectedGroup2 = true;

  bool uploaded = true;

  DateTime? lesseeDob;

  DateTime? nokDob;

  DateTime? prtpDob;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in Student_Contract_Details_Input widget.
  TenantInfoRecord? tenant;
  // Stores action output result for [Firestore Query - Query a collection] action in Student_Contract_Details_Input widget.
  StudentRecord? studentInfo;
  // State field(s) for lesseeName widget.
  FocusNode? lesseeNameFocusNode;
  TextEditingController? lesseeNameTextController;
  String? Function(BuildContext, String?)? lesseeNameTextControllerValidator;
  String? _lesseeNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input Your Name';
    }

    return null;
  }

  // State field(s) for lesseeSurname widget.
  FocusNode? lesseeSurnameFocusNode;
  TextEditingController? lesseeSurnameTextController;
  String? Function(BuildContext, String?)? lesseeSurnameTextControllerValidator;
  String? _lesseeSurnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input Your Surname';
    }

    return null;
  }

  // State field(s) for lesseeID widget.
  FocusNode? lesseeIDFocusNode;
  TextEditingController? lesseeIDTextController;
  String? Function(BuildContext, String?)? lesseeIDTextControllerValidator;
  String? _lesseeIDTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input Your ID';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for lesseeTel widget.
  FocusNode? lesseeTelFocusNode;
  TextEditingController? lesseeTelTextController;
  String? Function(BuildContext, String?)? lesseeTelTextControllerValidator;
  String? _lesseeTelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input Your Cell Phone Number';
    }

    return null;
  }

  // State field(s) for lesseeEmail widget.
  FocusNode? lesseeEmailFocusNode;
  TextEditingController? lesseeEmailTextController;
  String? Function(BuildContext, String?)? lesseeEmailTextControllerValidator;
  String? _lesseeEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input Your Email';
    }

    return null;
  }

  // State field(s) for lesseeStudentNumber widget.
  FocusNode? lesseeStudentNumberFocusNode;
  TextEditingController? lesseeStudentNumberTextController;
  String? Function(BuildContext, String?)?
      lesseeStudentNumberTextControllerValidator;
  String? _lesseeStudentNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input Your Student Number';
    }

    return null;
  }

  // State field(s) for lesseeStudyCourse widget.
  FocusNode? lesseeStudyCourseFocusNode;
  TextEditingController? lesseeStudyCourseTextController;
  String? Function(BuildContext, String?)?
      lesseeStudyCourseTextControllerValidator;
  String? _lesseeStudyCourseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input The Course You Are Studying';
    }

    return null;
  }

  // State field(s) for lesseeYearOfStudy widget.
  FocusNode? lesseeYearOfStudyFocusNode;
  TextEditingController? lesseeYearOfStudyTextController;
  String? Function(BuildContext, String?)?
      lesseeYearOfStudyTextControllerValidator;
  String? _lesseeYearOfStudyTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Input Your Year Of Study';
    }

    return null;
  }

  // State field(s) for lesseeGender widget.
  String? lesseeGenderValue;
  FormFieldController<String>? lesseeGenderValueController;
  // State field(s) for lesseeStreetAddress widget.
  FocusNode? lesseeStreetAddressFocusNode;
  TextEditingController? lesseeStreetAddressTextController;
  String? Function(BuildContext, String?)?
      lesseeStreetAddressTextControllerValidator;
  String? _lesseeStreetAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Your Street Address';
    }

    return null;
  }

  // State field(s) for lesseeCity widget.
  FocusNode? lesseeCityFocusNode;
  TextEditingController? lesseeCityTextController;
  String? Function(BuildContext, String?)? lesseeCityTextControllerValidator;
  String? _lesseeCityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Your City ';
    }

    return null;
  }

  // State field(s) for lesseeProvince widget.
  String? lesseeProvinceValue;
  FormFieldController<String>? lesseeProvinceValueController;
  // State field(s) for lesseePostalCode widget.
  FocusNode? lesseePostalCodeFocusNode;
  TextEditingController? lesseePostalCodeTextController;
  String? Function(BuildContext, String?)?
      lesseePostalCodeTextControllerValidator;
  String? _lesseePostalCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Your Postal Code';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for lesseePOBox widget.
  FocusNode? lesseePOBoxFocusNode;
  TextEditingController? lesseePOBoxTextController;
  String? Function(BuildContext, String?)? lesseePOBoxTextControllerValidator;
  // State field(s) for lesseeCity2 widget.
  FocusNode? lesseeCity2FocusNode;
  TextEditingController? lesseeCity2TextController;
  String? Function(BuildContext, String?)? lesseeCity2TextControllerValidator;
  // State field(s) for lesseeProvince2 widget.
  String? lesseeProvince2Value;
  FormFieldController<String>? lesseeProvince2ValueController;
  // State field(s) for lesseePostalCode2 widget.
  FocusNode? lesseePostalCode2FocusNode;
  TextEditingController? lesseePostalCode2TextController;
  String? Function(BuildContext, String?)?
      lesseePostalCode2TextControllerValidator;
  // State field(s) for nameOfSponsor widget.
  FocusNode? nameOfSponsorFocusNode;
  TextEditingController? nameOfSponsorTextController;
  String? Function(BuildContext, String?)? nameOfSponsorTextControllerValidator;
  String? _nameOfSponsorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Name';
    }

    return null;
  }

  // State field(s) for sponsorSurname widget.
  FocusNode? sponsorSurnameFocusNode;
  TextEditingController? sponsorSurnameTextController;
  String? Function(BuildContext, String?)?
      sponsorSurnameTextControllerValidator;
  String? _sponsorSurnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Surname';
    }

    return null;
  }

  // State field(s) for sponsorIDNumber widget.
  FocusNode? sponsorIDNumberFocusNode;
  TextEditingController? sponsorIDNumberTextController;
  String? Function(BuildContext, String?)?
      sponsorIDNumberTextControllerValidator;
  String? _sponsorIDNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter ID Number';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for sponsorTel widget.
  FocusNode? sponsorTelFocusNode;
  TextEditingController? sponsorTelTextController;
  String? Function(BuildContext, String?)? sponsorTelTextControllerValidator;
  String? _sponsorTelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Cell Phone Number';
    }

    return null;
  }

  // State field(s) for sponsorEmail widget.
  FocusNode? sponsorEmailFocusNode;
  TextEditingController? sponsorEmailTextController;
  String? Function(BuildContext, String?)? sponsorEmailTextControllerValidator;
  String? _sponsorEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Email';
    }

    return null;
  }

  // State field(s) for lesseePostal widget.
  FocusNode? lesseePostalFocusNode;
  TextEditingController? lesseePostalTextController;
  String? Function(BuildContext, String?)? lesseePostalTextControllerValidator;
  // State field(s) for sponsorStreetAddress widget.
  FocusNode? sponsorStreetAddressFocusNode;
  TextEditingController? sponsorStreetAddressTextController;
  String? Function(BuildContext, String?)?
      sponsorStreetAddressTextControllerValidator;
  String? _sponsorStreetAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Street Address';
    }

    return null;
  }

  // State field(s) for sponsorCity widget.
  FocusNode? sponsorCityFocusNode;
  TextEditingController? sponsorCityTextController;
  String? Function(BuildContext, String?)? sponsorCityTextControllerValidator;
  String? _sponsorCityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter City';
    }

    return null;
  }

  // State field(s) for prtpProvince widget.
  String? prtpProvinceValue;
  FormFieldController<String>? prtpProvinceValueController;
  // State field(s) for sponsorPostalCode widget.
  FocusNode? sponsorPostalCodeFocusNode;
  TextEditingController? sponsorPostalCodeTextController;
  String? Function(BuildContext, String?)?
      sponsorPostalCodeTextControllerValidator;
  String? _sponsorPostalCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Postal Code';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for sponsorPOBox widget.
  FocusNode? sponsorPOBoxFocusNode;
  TextEditingController? sponsorPOBoxTextController;
  String? Function(BuildContext, String?)? sponsorPOBoxTextControllerValidator;
  // State field(s) for sponsorCity2 widget.
  FocusNode? sponsorCity2FocusNode;
  TextEditingController? sponsorCity2TextController;
  String? Function(BuildContext, String?)? sponsorCity2TextControllerValidator;
  // State field(s) for prtpProvince2 widget.
  String? prtpProvince2Value;
  FormFieldController<String>? prtpProvince2ValueController;
  // State field(s) for sponsorPostalCode2 widget.
  FocusNode? sponsorPostalCode2FocusNode;
  TextEditingController? sponsorPostalCode2TextController;
  String? Function(BuildContext, String?)?
      sponsorPostalCode2TextControllerValidator;
  // State field(s) for nameOfNOK widget.
  FocusNode? nameOfNOKFocusNode;
  TextEditingController? nameOfNOKTextController;
  String? Function(BuildContext, String?)? nameOfNOKTextControllerValidator;
  String? _nameOfNOKTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Full Names is required';
    }

    return null;
  }

  // State field(s) for nextOfKinSurname widget.
  FocusNode? nextOfKinSurnameFocusNode;
  TextEditingController? nextOfKinSurnameTextController;
  String? Function(BuildContext, String?)?
      nextOfKinSurnameTextControllerValidator;
  String? _nextOfKinSurnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Surname is required';
    }

    return null;
  }

  // State field(s) for nextOfKinIDNumber widget.
  FocusNode? nextOfKinIDNumberFocusNode;
  TextEditingController? nextOfKinIDNumberTextController;
  String? Function(BuildContext, String?)?
      nextOfKinIDNumberTextControllerValidator;
  String? _nextOfKinIDNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ID Number (Passport Number For Non-SA Residents) is required';
    }

    return null;
  }

  DateTime? datePicked3;
  // State field(s) for nextOfKinTel widget.
  FocusNode? nextOfKinTelFocusNode;
  TextEditingController? nextOfKinTelTextController;
  String? Function(BuildContext, String?)? nextOfKinTelTextControllerValidator;
  String? _nextOfKinTelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Cell Phone Number is required';
    }

    return null;
  }

  // State field(s) for nextOfKinEmail widget.
  FocusNode? nextOfKinEmailFocusNode;
  TextEditingController? nextOfKinEmailTextController;
  String? Function(BuildContext, String?)?
      nextOfKinEmailTextControllerValidator;
  String? _nextOfKinEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email Address is required';
    }

    return null;
  }

  // State field(s) for nextOfKinStreetAddress widget.
  FocusNode? nextOfKinStreetAddressFocusNode;
  TextEditingController? nextOfKinStreetAddressTextController;
  String? Function(BuildContext, String?)?
      nextOfKinStreetAddressTextControllerValidator;
  String? _nextOfKinStreetAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Street Address is required';
    }

    return null;
  }

  // State field(s) for nextOfKinCity widget.
  FocusNode? nextOfKinCityFocusNode;
  TextEditingController? nextOfKinCityTextController;
  String? Function(BuildContext, String?)? nextOfKinCityTextControllerValidator;
  String? _nextOfKinCityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'City is required';
    }

    return null;
  }

  // State field(s) for nokProvince widget.
  String? nokProvinceValue;
  FormFieldController<String>? nokProvinceValueController;
  // State field(s) for nextOfKinPostalCode widget.
  FocusNode? nextOfKinPostalCodeFocusNode;
  TextEditingController? nextOfKinPostalCodeTextController;
  String? Function(BuildContext, String?)?
      nextOfKinPostalCodeTextControllerValidator;
  String? _nextOfKinPostalCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Postal Code is required';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for nextOfKinPOBox widget.
  FocusNode? nextOfKinPOBoxFocusNode;
  TextEditingController? nextOfKinPOBoxTextController;
  String? Function(BuildContext, String?)?
      nextOfKinPOBoxTextControllerValidator;
  // State field(s) for nextOfKinCity2 widget.
  FocusNode? nextOfKinCity2FocusNode;
  TextEditingController? nextOfKinCity2TextController;
  String? Function(BuildContext, String?)?
      nextOfKinCity2TextControllerValidator;
  // State field(s) for nokProvince2 widget.
  String? nokProvince2Value;
  FormFieldController<String>? nokProvince2ValueController;
  // State field(s) for nextOfKinPostalCode2 widget.
  FocusNode? nextOfKinPostalCode2FocusNode;
  TextEditingController? nextOfKinPostalCode2TextController;
  String? Function(BuildContext, String?)?
      nextOfKinPostalCode2TextControllerValidator;
  bool isDataUploading_copyOfID = false;
  FFUploadedFile uploadedLocalFile_copyOfID =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_copyOfID = '';

  bool isDataUploading_copyStudent = false;
  FFUploadedFile uploadedLocalFile_copyStudent =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_copyStudent = '';

  @override
  void initState(BuildContext context) {
    lesseeNameTextControllerValidator = _lesseeNameTextControllerValidator;
    lesseeSurnameTextControllerValidator =
        _lesseeSurnameTextControllerValidator;
    lesseeIDTextControllerValidator = _lesseeIDTextControllerValidator;
    lesseeTelTextControllerValidator = _lesseeTelTextControllerValidator;
    lesseeEmailTextControllerValidator = _lesseeEmailTextControllerValidator;
    lesseeStudentNumberTextControllerValidator =
        _lesseeStudentNumberTextControllerValidator;
    lesseeStudyCourseTextControllerValidator =
        _lesseeStudyCourseTextControllerValidator;
    lesseeYearOfStudyTextControllerValidator =
        _lesseeYearOfStudyTextControllerValidator;
    lesseeStreetAddressTextControllerValidator =
        _lesseeStreetAddressTextControllerValidator;
    lesseeCityTextControllerValidator = _lesseeCityTextControllerValidator;
    lesseePostalCodeTextControllerValidator =
        _lesseePostalCodeTextControllerValidator;
    nameOfSponsorTextControllerValidator =
        _nameOfSponsorTextControllerValidator;
    sponsorSurnameTextControllerValidator =
        _sponsorSurnameTextControllerValidator;
    sponsorIDNumberTextControllerValidator =
        _sponsorIDNumberTextControllerValidator;
    sponsorTelTextControllerValidator = _sponsorTelTextControllerValidator;
    sponsorEmailTextControllerValidator = _sponsorEmailTextControllerValidator;
    sponsorStreetAddressTextControllerValidator =
        _sponsorStreetAddressTextControllerValidator;
    sponsorCityTextControllerValidator = _sponsorCityTextControllerValidator;
    sponsorPostalCodeTextControllerValidator =
        _sponsorPostalCodeTextControllerValidator;
    nameOfNOKTextControllerValidator = _nameOfNOKTextControllerValidator;
    nextOfKinSurnameTextControllerValidator =
        _nextOfKinSurnameTextControllerValidator;
    nextOfKinIDNumberTextControllerValidator =
        _nextOfKinIDNumberTextControllerValidator;
    nextOfKinTelTextControllerValidator = _nextOfKinTelTextControllerValidator;
    nextOfKinEmailTextControllerValidator =
        _nextOfKinEmailTextControllerValidator;
    nextOfKinStreetAddressTextControllerValidator =
        _nextOfKinStreetAddressTextControllerValidator;
    nextOfKinCityTextControllerValidator =
        _nextOfKinCityTextControllerValidator;
    nextOfKinPostalCodeTextControllerValidator =
        _nextOfKinPostalCodeTextControllerValidator;
  }

  @override
  void dispose() {
    lesseeNameFocusNode?.dispose();
    lesseeNameTextController?.dispose();

    lesseeSurnameFocusNode?.dispose();
    lesseeSurnameTextController?.dispose();

    lesseeIDFocusNode?.dispose();
    lesseeIDTextController?.dispose();

    lesseeTelFocusNode?.dispose();
    lesseeTelTextController?.dispose();

    lesseeEmailFocusNode?.dispose();
    lesseeEmailTextController?.dispose();

    lesseeStudentNumberFocusNode?.dispose();
    lesseeStudentNumberTextController?.dispose();

    lesseeStudyCourseFocusNode?.dispose();
    lesseeStudyCourseTextController?.dispose();

    lesseeYearOfStudyFocusNode?.dispose();
    lesseeYearOfStudyTextController?.dispose();

    lesseeStreetAddressFocusNode?.dispose();
    lesseeStreetAddressTextController?.dispose();

    lesseeCityFocusNode?.dispose();
    lesseeCityTextController?.dispose();

    lesseePostalCodeFocusNode?.dispose();
    lesseePostalCodeTextController?.dispose();

    lesseePOBoxFocusNode?.dispose();
    lesseePOBoxTextController?.dispose();

    lesseeCity2FocusNode?.dispose();
    lesseeCity2TextController?.dispose();

    lesseePostalCode2FocusNode?.dispose();
    lesseePostalCode2TextController?.dispose();

    nameOfSponsorFocusNode?.dispose();
    nameOfSponsorTextController?.dispose();

    sponsorSurnameFocusNode?.dispose();
    sponsorSurnameTextController?.dispose();

    sponsorIDNumberFocusNode?.dispose();
    sponsorIDNumberTextController?.dispose();

    sponsorTelFocusNode?.dispose();
    sponsorTelTextController?.dispose();

    sponsorEmailFocusNode?.dispose();
    sponsorEmailTextController?.dispose();

    lesseePostalFocusNode?.dispose();
    lesseePostalTextController?.dispose();

    sponsorStreetAddressFocusNode?.dispose();
    sponsorStreetAddressTextController?.dispose();

    sponsorCityFocusNode?.dispose();
    sponsorCityTextController?.dispose();

    sponsorPostalCodeFocusNode?.dispose();
    sponsorPostalCodeTextController?.dispose();

    sponsorPOBoxFocusNode?.dispose();
    sponsorPOBoxTextController?.dispose();

    sponsorCity2FocusNode?.dispose();
    sponsorCity2TextController?.dispose();

    sponsorPostalCode2FocusNode?.dispose();
    sponsorPostalCode2TextController?.dispose();

    nameOfNOKFocusNode?.dispose();
    nameOfNOKTextController?.dispose();

    nextOfKinSurnameFocusNode?.dispose();
    nextOfKinSurnameTextController?.dispose();

    nextOfKinIDNumberFocusNode?.dispose();
    nextOfKinIDNumberTextController?.dispose();

    nextOfKinTelFocusNode?.dispose();
    nextOfKinTelTextController?.dispose();

    nextOfKinEmailFocusNode?.dispose();
    nextOfKinEmailTextController?.dispose();

    nextOfKinStreetAddressFocusNode?.dispose();
    nextOfKinStreetAddressTextController?.dispose();

    nextOfKinCityFocusNode?.dispose();
    nextOfKinCityTextController?.dispose();

    nextOfKinPostalCodeFocusNode?.dispose();
    nextOfKinPostalCodeTextController?.dispose();

    nextOfKinPOBoxFocusNode?.dispose();
    nextOfKinPOBoxTextController?.dispose();

    nextOfKinCity2FocusNode?.dispose();
    nextOfKinCity2TextController?.dispose();

    nextOfKinPostalCode2FocusNode?.dispose();
    nextOfKinPostalCode2TextController?.dispose();
  }
}
