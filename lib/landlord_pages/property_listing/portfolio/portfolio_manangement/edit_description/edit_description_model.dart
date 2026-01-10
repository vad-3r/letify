import '/flutter_flow/flutter_flow_util.dart';
import 'edit_description_widget.dart' show EditDescriptionWidget;
import 'package:flutter/material.dart';

class EditDescriptionModel extends FlutterFlowModel<EditDescriptionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for propertyDescription widget.
  FocusNode? propertyDescriptionFocusNode;
  TextEditingController? propertyDescriptionTextController;
  String? Function(BuildContext, String?)?
      propertyDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propertyDescriptionFocusNode?.dispose();
    propertyDescriptionTextController?.dispose();
  }
}
