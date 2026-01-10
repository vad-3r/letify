import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'properties_for_house_group_agent_widget.dart'
    show PropertiesForHouseGroupAgentWidget;
import 'package:flutter/material.dart';

class PropertiesForHouseGroupAgentModel
    extends FlutterFlowModel<PropertiesForHouseGroupAgentWidget> {
  ///  Local state fields for this page.

  bool emptyText = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode;
  TextEditingController? propSearchTextController;
  String? Function(BuildContext, String?)? propSearchTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propSearchFocusNode?.dispose();
    propSearchTextController?.dispose();
  }
}
