import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'l4_add_property_widget.dart' show L4AddPropertyWidget;
import 'package:flutter/material.dart';

class L4AddPropertyModel extends FlutterFlowModel<L4AddPropertyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for basicAmenites widget.
  FormFieldController<List<String>>? basicAmenitesValueController;
  List<String>? get basicAmenitesValues => basicAmenitesValueController?.value;
  set basicAmenitesValues(List<String>? val) =>
      basicAmenitesValueController?.value = val;
  // State field(s) for kitchenAmenities widget.
  FormFieldController<List<String>>? kitchenAmenitiesValueController;
  List<String>? get kitchenAmenitiesValues =>
      kitchenAmenitiesValueController?.value;
  set kitchenAmenitiesValues(List<String>? val) =>
      kitchenAmenitiesValueController?.value = val;
  // State field(s) for bathroomAmenities widget.
  FormFieldController<List<String>>? bathroomAmenitiesValueController;
  List<String>? get bathroomAmenitiesValues =>
      bathroomAmenitiesValueController?.value;
  set bathroomAmenitiesValues(List<String>? val) =>
      bathroomAmenitiesValueController?.value = val;
  // State field(s) for outdoorAmenities widget.
  FormFieldController<List<String>>? outdoorAmenitiesValueController;
  List<String>? get outdoorAmenitiesValues =>
      outdoorAmenitiesValueController?.value;
  set outdoorAmenitiesValues(List<String>? val) =>
      outdoorAmenitiesValueController?.value = val;
  // State field(s) for addAmenities widget.
  FormFieldController<List<String>>? addAmenitiesValueController;
  List<String>? get addAmenitiesValues => addAmenitiesValueController?.value;
  set addAmenitiesValues(List<String>? val) =>
      addAmenitiesValueController?.value = val;
  // State field(s) for bedroomAmenities widget.
  FormFieldController<List<String>>? bedroomAmenitiesValueController;
  List<String>? get bedroomAmenitiesValues =>
      bedroomAmenitiesValueController?.value;
  set bedroomAmenitiesValues(List<String>? val) =>
      bedroomAmenitiesValueController?.value = val;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PropertyRecord? newProperty;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();
  }
}
