import '/flutter_flow/flutter_flow_util.dart';
import 'agent_details_widget.dart' show AgentDetailsWidget;
import 'package:flutter/material.dart';

class AgentDetailsModel extends FlutterFlowModel<AgentDetailsWidget> {
  ///  Local state fields for this component.

  bool? isWrong = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ID_Num widget.
  FocusNode? iDNumFocusNode;
  TextEditingController? iDNumTextController;
  String? Function(BuildContext, String?)? iDNumTextControllerValidator;
  String? _iDNumTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ID Number is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    iDNumTextControllerValidator = _iDNumTextControllerValidator;
  }

  @override
  void dispose() {
    iDNumFocusNode?.dispose();
    iDNumTextController?.dispose();
  }
}
