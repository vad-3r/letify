import '/flutter_flow/flutter_flow_util.dart';
import 'edit_wifi_rules_widget.dart' show EditWifiRulesWidget;
import 'package:flutter/material.dart';

class EditWifiRulesModel extends FlutterFlowModel<EditWifiRulesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for roomName widget.
  FocusNode? roomNameFocusNode;
  TextEditingController? roomNameTextController;
  String? Function(BuildContext, String?)? roomNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    roomNameFocusNode?.dispose();
    roomNameTextController?.dispose();
  }
}
