import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'lodge_ticket_widget.dart' show LodgeTicketWidget;
import 'package:flutter/material.dart';

class LodgeTicketModel extends FlutterFlowModel<LodgeTicketWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for submissionDate widget.
  String? submissionDateValue;
  FormFieldController<String>? submissionDateValueController;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
