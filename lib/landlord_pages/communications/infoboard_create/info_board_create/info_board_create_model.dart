import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'info_board_create_widget.dart' show InfoBoardCreateWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class InfoBoardCreateModel extends FlutterFlowModel<InfoBoardCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in Info_Board_Create widget.
  List<LandlordRecord>? landlords;
  // Stores action output result for [Firestore Query - Query a collection] action in Info_Board_Create widget.
  List<StudentRecord>? cutStudents;
  // Stores action output result for [Firestore Query - Query a collection] action in Info_Board_Create widget.
  List<StudentRecord>? ufsStudents;
  // Stores action output result for [Firestore Query - Query a collection] action in Info_Board_Create widget.
  List<UserRecord>? staff;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'A title for your info board  is required';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'A description for your info board is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InfoBoardRecord? info;

  @override
  void initState(BuildContext context) {
    titleTextControllerValidator = _titleTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
