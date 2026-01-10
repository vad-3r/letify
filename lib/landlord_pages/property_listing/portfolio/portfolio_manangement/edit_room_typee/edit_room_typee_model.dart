import '/flutter_flow/flutter_flow_util.dart';
import 'edit_room_typee_widget.dart' show EditRoomTypeeWidget;
import 'package:flutter/material.dart';

class EditRoomTypeeModel extends FlutterFlowModel<EditRoomTypeeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for roomDescription widget.
  FocusNode? roomDescriptionFocusNode;
  TextEditingController? roomDescriptionTextController;
  String? Function(BuildContext, String?)?
      roomDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    roomDescriptionFocusNode?.dispose();
    roomDescriptionTextController?.dispose();
  }
}
