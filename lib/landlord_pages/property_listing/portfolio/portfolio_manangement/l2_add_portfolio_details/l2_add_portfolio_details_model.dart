import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'l2_add_portfolio_details_widget.dart' show L2AddPortfolioDetailsWidget;
import 'package:flutter/material.dart';

class L2AddPortfolioDetailsModel
    extends FlutterFlowModel<L2AddPortfolioDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for portfolioDescription widget.
  FocusNode? portfolioDescriptionFocusNode;
  TextEditingController? portfolioDescriptionTextController;
  String? Function(BuildContext, String?)?
      portfolioDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    portfolioDescriptionFocusNode?.dispose();
    portfolioDescriptionTextController?.dispose();
  }
}
