import '/flutter_flow/flutter_flow_util.dart';
import 'fixit_screen_copy_widget.dart' show FixitScreenCopyWidget;
import 'package:flutter/material.dart';

class FixitScreenCopyModel extends FlutterFlowModel<FixitScreenCopyWidget> {
  ///  Local state fields for this page.

  String? generatedText;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? textGenerated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
