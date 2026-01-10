import '/flutter_flow/flutter_flow_util.dart';
import 'edit_eighth_clause_widget.dart' show EditEighthClauseWidget;
import 'package:flutter/material.dart';

class EditEighthClauseModel extends FlutterFlowModel<EditEighthClauseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for adminFee widget.
  FocusNode? adminFeeFocusNode;
  TextEditingController? adminFeeTextController;
  String? Function(BuildContext, String?)? adminFeeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    adminFeeFocusNode?.dispose();
    adminFeeTextController?.dispose();
  }
}
