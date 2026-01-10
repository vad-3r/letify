import '/flutter_flow/flutter_flow_util.dart';
import 'groups_messaging_widget.dart' show GroupsMessagingWidget;
import 'package:flutter/material.dart';

class GroupsMessagingModel extends FlutterFlowModel<GroupsMessagingWidget> {
  ///  State fields for stateful widgets in this component.

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
