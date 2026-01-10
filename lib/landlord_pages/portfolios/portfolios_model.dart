import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'portfolios_widget.dart' show PortfoliosWidget;
import 'package:flutter/material.dart';

class PortfoliosModel extends FlutterFlowModel<PortfoliosWidget> {
  ///  Local state fields for this page.

  bool emptyText = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode1;
  TextEditingController? propSearchTextController1;
  String? Function(BuildContext, String?)? propSearchTextController1Validator;
  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode2;
  TextEditingController? propSearchTextController2;
  String? Function(BuildContext, String?)? propSearchTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    propSearchFocusNode1?.dispose();
    propSearchTextController1?.dispose();

    propSearchFocusNode2?.dispose();
    propSearchTextController2?.dispose();
  }
}
