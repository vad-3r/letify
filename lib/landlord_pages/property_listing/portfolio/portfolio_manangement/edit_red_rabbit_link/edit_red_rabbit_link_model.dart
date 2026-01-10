import '/flutter_flow/flutter_flow_util.dart';
import 'edit_red_rabbit_link_widget.dart' show EditRedRabbitLinkWidget;
import 'package:flutter/material.dart';

class EditRedRabbitLinkModel extends FlutterFlowModel<EditRedRabbitLinkWidget> {
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
