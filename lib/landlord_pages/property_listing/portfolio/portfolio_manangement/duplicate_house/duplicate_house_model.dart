import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'duplicate_house_widget.dart' show DuplicateHouseWidget;
import 'package:flutter/material.dart';

class DuplicateHouseModel extends FlutterFlowModel<DuplicateHouseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PropertyRecord? dupe;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RoomRecord? createdRoom;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
