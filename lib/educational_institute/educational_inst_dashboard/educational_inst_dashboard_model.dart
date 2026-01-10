import '/flutter_flow/flutter_flow_util.dart';
import 'educational_inst_dashboard_widget.dart'
    show EducationalInstDashboardWidget;
import 'package:flutter/material.dart';

class EducationalInstDashboardModel
    extends FlutterFlowModel<EducationalInstDashboardWidget> {
  ///  State fields for stateful widgets in this page.

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
