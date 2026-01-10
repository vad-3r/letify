import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'contract_builder_widget.dart' show ContractBuilderWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class ContractBuilderModel extends FlutterFlowModel<ContractBuilderWidget> {
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

  ///  State fields for stateful widgets in this page.

  final formKey5 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  // State field(s) for lessorName widget.
  FocusNode? lessorNameFocusNode1;
  TextEditingController? lessorNameTextController1;
  String? Function(BuildContext, String?)? lessorNameTextController1Validator;
  String? _lessorNameTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the name that will appear on your contract';
    }

    return null;
  }

  // State field(s) for lessorName widget.
  FocusNode? lessorNameFocusNode2;
  TextEditingController? lessorNameTextController2;
  String? Function(BuildContext, String?)? lessorNameTextController2Validator;
  // State field(s) for lessorID widget.
  FocusNode? lessorIDFocusNode;
  TextEditingController? lessorIDTextController;
  String? Function(BuildContext, String?)? lessorIDTextControllerValidator;
  String? _lessorIDTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your ID';
    }

    return null;
  }

  // State field(s) for lessorStreetAddress widget.
  FocusNode? lessorStreetAddressFocusNode;
  TextEditingController? lessorStreetAddressTextController;
  String? Function(BuildContext, String?)?
      lessorStreetAddressTextControllerValidator;
  String? _lessorStreetAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your street address';
    }

    return null;
  }

  // State field(s) for lessorSuburb widget.
  FocusNode? lessorSuburbFocusNode;
  TextEditingController? lessorSuburbTextController;
  String? Function(BuildContext, String?)? lessorSuburbTextControllerValidator;
  String? _lessorSuburbTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter suburb';
    }

    return null;
  }

  // State field(s) for lessorCity widget.
  FocusNode? lessorCityFocusNode;
  TextEditingController? lessorCityTextController;
  String? Function(BuildContext, String?)? lessorCityTextControllerValidator;
  String? _lessorCityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter city';
    }

    return null;
  }

  // State field(s) for lessorPostalCode widget.
  FocusNode? lessorPostalCodeFocusNode;
  TextEditingController? lessorPostalCodeTextController;
  String? Function(BuildContext, String?)?
      lessorPostalCodeTextControllerValidator;
  String? _lessorPostalCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter postal code';
    }

    return null;
  }

  // State field(s) for lessorEmail widget.
  FocusNode? lessorEmailFocusNode;
  TextEditingController? lessorEmailTextController;
  String? Function(BuildContext, String?)? lessorEmailTextControllerValidator;
  String? _lessorEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter email address';
    }

    return null;
  }

  // State field(s) for telPhone widget.
  FocusNode? telPhoneFocusNode;
  TextEditingController? telPhoneTextController;
  String? Function(BuildContext, String?)? telPhoneTextControllerValidator;
  String? _telPhoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter telephone number';
    }

    return null;
  }

  // State field(s) for topTen1 widget.
  FocusNode? topTen1FocusNode;
  TextEditingController? topTen1TextController;
  String? Function(BuildContext, String?)? topTen1TextControllerValidator;
  // State field(s) for topTen2 widget.
  FocusNode? topTen2FocusNode;
  TextEditingController? topTen2TextController;
  String? Function(BuildContext, String?)? topTen2TextControllerValidator;
  // State field(s) for topTen3 widget.
  FocusNode? topTen3FocusNode;
  TextEditingController? topTen3TextController;
  String? Function(BuildContext, String?)? topTen3TextControllerValidator;
  // State field(s) for topTen4 widget.
  FocusNode? topTen4FocusNode;
  TextEditingController? topTen4TextController;
  String? Function(BuildContext, String?)? topTen4TextControllerValidator;
  // State field(s) for topTen5 widget.
  FocusNode? topTen5FocusNode;
  TextEditingController? topTen5TextController;
  String? Function(BuildContext, String?)? topTen5TextControllerValidator;
  // State field(s) for topTen6 widget.
  FocusNode? topTen6FocusNode;
  TextEditingController? topTen6TextController;
  String? Function(BuildContext, String?)? topTen6TextControllerValidator;
  // State field(s) for topTen7 widget.
  FocusNode? topTen7FocusNode;
  TextEditingController? topTen7TextController;
  String? Function(BuildContext, String?)? topTen7TextControllerValidator;
  // State field(s) for topTen8 widget.
  FocusNode? topTen8FocusNode;
  TextEditingController? topTen8TextController;
  String? Function(BuildContext, String?)? topTen8TextControllerValidator;
  // State field(s) for topTen9 widget.
  FocusNode? topTen9FocusNode;
  TextEditingController? topTen9TextController;
  String? Function(BuildContext, String?)? topTen9TextControllerValidator;
  // State field(s) for topTen10 widget.
  FocusNode? topTen10FocusNode;
  TextEditingController? topTen10TextController;
  String? Function(BuildContext, String?)? topTen10TextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ContractBuilderRecord? contracting;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for lesseeName widget.
  FocusNode? lesseeNameFocusNode;
  TextEditingController? lesseeNameTextController;
  String? Function(BuildContext, String?)? lesseeNameTextControllerValidator;
  // State field(s) for lesseeID widget.
  FocusNode? lesseeIDFocusNode;
  TextEditingController? lesseeIDTextController;
  String? Function(BuildContext, String?)? lesseeIDTextControllerValidator;
  // State field(s) for lesseeEmail widget.
  FocusNode? lesseeEmailFocusNode;
  TextEditingController? lesseeEmailTextController;
  String? Function(BuildContext, String?)? lesseeEmailTextControllerValidator;
  // State field(s) for lesseeStreet widget.
  FocusNode? lesseeStreetFocusNode;
  TextEditingController? lesseeStreetTextController;
  String? Function(BuildContext, String?)? lesseeStreetTextControllerValidator;
  // State field(s) for lesseeSuburb widget.
  FocusNode? lesseeSuburbFocusNode;
  TextEditingController? lesseeSuburbTextController;
  String? Function(BuildContext, String?)? lesseeSuburbTextControllerValidator;
  // State field(s) for lesseeCity widget.
  FocusNode? lesseeCityFocusNode;
  TextEditingController? lesseeCityTextController;
  String? Function(BuildContext, String?)? lesseeCityTextControllerValidator;
  // State field(s) for lesseePostal widget.
  FocusNode? lesseePostalFocusNode1;
  TextEditingController? lesseePostalTextController1;
  String? Function(BuildContext, String?)? lesseePostalTextController1Validator;
  // State field(s) for lesseePostal widget.
  FocusNode? lesseePostalFocusNode2;
  TextEditingController? lesseePostalTextController2;
  String? Function(BuildContext, String?)? lesseePostalTextController2Validator;
  // State field(s) for customRoomType widget.
  FocusNode? customRoomTypeFocusNode;
  TextEditingController? customRoomTypeTextController;
  String? Function(BuildContext, String?)?
      customRoomTypeTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for rent widget.
  FocusNode? rentFocusNode1;
  TextEditingController? rentTextController1;
  String? Function(BuildContext, String?)? rentTextController1Validator;
  String? _rentTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter rent ';
    }

    return null;
  }

  // State field(s) for rent widget.
  FocusNode? rentFocusNode2;
  TextEditingController? rentTextController2;
  String? Function(BuildContext, String?)? rentTextController2Validator;
  // State field(s) for rent widget.
  FocusNode? rentFocusNode3;
  TextEditingController? rentTextController3;
  String? Function(BuildContext, String?)? rentTextController3Validator;
  // State field(s) for rent widget.
  FocusNode? rentFocusNode4;
  TextEditingController? rentTextController4;
  String? Function(BuildContext, String?)? rentTextController4Validator;
  // State field(s) for rent widget.
  FocusNode? rentFocusNode5;
  TextEditingController? rentTextController5;
  String? Function(BuildContext, String?)? rentTextController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController34;
  String? Function(BuildContext, String?)? textController34Validator;
  String? _textController34Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter electricity rules';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController35;
  String? Function(BuildContext, String?)? textController35Validator;
  String? _textController35Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter water rules';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController36;
  String? Function(BuildContext, String?)? textController36Validator;
  String? _textController36Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter water rules';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController37;
  String? Function(BuildContext, String?)? textController37Validator;
  String? _textController37Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter water rules';
    }

    return null;
  }

  // State field(s) for signatureChoice widget.
  String? signatureChoiceValue;
  FormFieldController<String>? signatureChoiceValueController;
  // State field(s) for lessorSignature widget.
  SignatureController? lessorSignatureController;
  bool isDataUploading_primarySignature1 = false;
  FFUploadedFile uploadedLocalFile_primarySignature1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_primarySignature1 = '';

  bool isDataUploading_signature1Url = false;
  FFUploadedFile uploadedLocalFile_signature1Url =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_signature1Url = '';

  bool isDataUploading_signature2Url = false;
  FFUploadedFile uploadedLocalFile_signature2Url =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_signature2Url = '';

  String uploadedSignatureUrl = '';
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ContractRecord? onCreateContract1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ContractRecord? onCreateContract;

  @override
  void initState(BuildContext context) {
    lessorNameTextController1Validator = _lessorNameTextController1Validator;
    lessorIDTextControllerValidator = _lessorIDTextControllerValidator;
    lessorStreetAddressTextControllerValidator =
        _lessorStreetAddressTextControllerValidator;
    lessorSuburbTextControllerValidator = _lessorSuburbTextControllerValidator;
    lessorCityTextControllerValidator = _lessorCityTextControllerValidator;
    lessorPostalCodeTextControllerValidator =
        _lessorPostalCodeTextControllerValidator;
    lessorEmailTextControllerValidator = _lessorEmailTextControllerValidator;
    telPhoneTextControllerValidator = _telPhoneTextControllerValidator;
    rentTextController1Validator = _rentTextController1Validator;
    textController34Validator = _textController34Validator;
    textController35Validator = _textController35Validator;
    textController36Validator = _textController36Validator;
    textController37Validator = _textController37Validator;
  }

  @override
  void dispose() {
    lessorNameFocusNode1?.dispose();
    lessorNameTextController1?.dispose();

    lessorNameFocusNode2?.dispose();
    lessorNameTextController2?.dispose();

    lessorIDFocusNode?.dispose();
    lessorIDTextController?.dispose();

    lessorStreetAddressFocusNode?.dispose();
    lessorStreetAddressTextController?.dispose();

    lessorSuburbFocusNode?.dispose();
    lessorSuburbTextController?.dispose();

    lessorCityFocusNode?.dispose();
    lessorCityTextController?.dispose();

    lessorPostalCodeFocusNode?.dispose();
    lessorPostalCodeTextController?.dispose();

    lessorEmailFocusNode?.dispose();
    lessorEmailTextController?.dispose();

    telPhoneFocusNode?.dispose();
    telPhoneTextController?.dispose();

    topTen1FocusNode?.dispose();
    topTen1TextController?.dispose();

    topTen2FocusNode?.dispose();
    topTen2TextController?.dispose();

    topTen3FocusNode?.dispose();
    topTen3TextController?.dispose();

    topTen4FocusNode?.dispose();
    topTen4TextController?.dispose();

    topTen5FocusNode?.dispose();
    topTen5TextController?.dispose();

    topTen6FocusNode?.dispose();
    topTen6TextController?.dispose();

    topTen7FocusNode?.dispose();
    topTen7TextController?.dispose();

    topTen8FocusNode?.dispose();
    topTen8TextController?.dispose();

    topTen9FocusNode?.dispose();
    topTen9TextController?.dispose();

    topTen10FocusNode?.dispose();
    topTen10TextController?.dispose();

    lesseeNameFocusNode?.dispose();
    lesseeNameTextController?.dispose();

    lesseeIDFocusNode?.dispose();
    lesseeIDTextController?.dispose();

    lesseeEmailFocusNode?.dispose();
    lesseeEmailTextController?.dispose();

    lesseeStreetFocusNode?.dispose();
    lesseeStreetTextController?.dispose();

    lesseeSuburbFocusNode?.dispose();
    lesseeSuburbTextController?.dispose();

    lesseeCityFocusNode?.dispose();
    lesseeCityTextController?.dispose();

    lesseePostalFocusNode1?.dispose();
    lesseePostalTextController1?.dispose();

    lesseePostalFocusNode2?.dispose();
    lesseePostalTextController2?.dispose();

    customRoomTypeFocusNode?.dispose();
    customRoomTypeTextController?.dispose();

    rentFocusNode1?.dispose();
    rentTextController1?.dispose();

    rentFocusNode2?.dispose();
    rentTextController2?.dispose();

    rentFocusNode3?.dispose();
    rentTextController3?.dispose();

    rentFocusNode4?.dispose();
    rentTextController4?.dispose();

    rentFocusNode5?.dispose();
    rentTextController5?.dispose();

    textFieldFocusNode1?.dispose();
    textController34?.dispose();

    textFieldFocusNode2?.dispose();
    textController35?.dispose();

    textFieldFocusNode3?.dispose();
    textController36?.dispose();

    textFieldFocusNode4?.dispose();
    textController37?.dispose();

    lessorSignatureController?.dispose();
  }
}
