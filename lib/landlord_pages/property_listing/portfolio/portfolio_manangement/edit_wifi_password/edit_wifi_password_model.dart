import '/flutter_flow/flutter_flow_util.dart';
import 'edit_wifi_password_widget.dart' show EditWifiPasswordWidget;
import 'package:flutter/material.dart';

class EditWifiPasswordModel extends FlutterFlowModel<EditWifiPasswordWidget> {
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
