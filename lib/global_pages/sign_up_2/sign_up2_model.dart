import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'sign_up2_widget.dart' show SignUp2Widget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class SignUp2Model extends FlutterFlowModel<SignUp2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserRecord>? userExists;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
