import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'properties_for_house_group_widget.dart'
    show PropertiesForHouseGroupWidget;
import 'package:flutter/material.dart';

class PropertiesForHouseGroupModel
    extends FlutterFlowModel<PropertiesForHouseGroupWidget> {
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
