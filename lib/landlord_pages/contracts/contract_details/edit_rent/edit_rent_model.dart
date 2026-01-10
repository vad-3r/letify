import '/flutter_flow/flutter_flow_util.dart';
import 'edit_rent_widget.dart' show EditRentWidget;
import 'package:flutter/material.dart';

class EditRentModel extends FlutterFlowModel<EditRentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for rent widget.
  FocusNode? rentFocusNode;
  TextEditingController? rentTextController;
  String? Function(BuildContext, String?)? rentTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rentFocusNode?.dispose();
    rentTextController?.dispose();
  }
}
