import '/flutter_flow/flutter_flow_util.dart';
import 'edit_portfolio_description_widget.dart'
    show EditPortfolioDescriptionWidget;
import 'package:flutter/material.dart';

class EditPortfolioDescriptionModel
    extends FlutterFlowModel<EditPortfolioDescriptionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for portfolioDescription widget.
  FocusNode? portfolioDescriptionFocusNode;
  TextEditingController? portfolioDescriptionTextController;
  String? Function(BuildContext, String?)?
      portfolioDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    portfolioDescriptionFocusNode?.dispose();
    portfolioDescriptionTextController?.dispose();
  }
}
