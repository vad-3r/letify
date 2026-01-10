import '/flutter_flow/flutter_flow_util.dart';
import 'edit_security_group_link_widget.dart' show EditSecurityGroupLinkWidget;
import 'package:flutter/material.dart';

class EditSecurityGroupLinkModel
    extends FlutterFlowModel<EditSecurityGroupLinkWidget> {
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
