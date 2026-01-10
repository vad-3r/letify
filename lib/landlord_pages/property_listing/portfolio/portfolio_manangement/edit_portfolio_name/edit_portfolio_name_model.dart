import '/flutter_flow/flutter_flow_util.dart';
import 'edit_portfolio_name_widget.dart' show EditPortfolioNameWidget;
import 'package:flutter/material.dart';

class EditPortfolioNameModel extends FlutterFlowModel<EditPortfolioNameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for portfolioName widget.
  FocusNode? portfolioNameFocusNode;
  TextEditingController? portfolioNameTextController;
  String? Function(BuildContext, String?)? portfolioNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    portfolioNameFocusNode?.dispose();
    portfolioNameTextController?.dispose();
  }
}
