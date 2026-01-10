import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_city_widget.dart' show EditLessorCityWidget;
import 'package:flutter/material.dart';

class EditLessorCityModel extends FlutterFlowModel<EditLessorCityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cityFocusNode?.dispose();
    cityTextController?.dispose();
  }
}
