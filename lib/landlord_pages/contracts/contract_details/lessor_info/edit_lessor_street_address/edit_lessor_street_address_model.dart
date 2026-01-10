import '/flutter_flow/flutter_flow_util.dart';
import 'edit_lessor_street_address_widget.dart'
    show EditLessorStreetAddressWidget;
import 'package:flutter/material.dart';

class EditLessorStreetAddressModel
    extends FlutterFlowModel<EditLessorStreetAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for streetAddress widget.
  FocusNode? streetAddressFocusNode;
  TextEditingController? streetAddressTextController;
  String? Function(BuildContext, String?)? streetAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    streetAddressFocusNode?.dispose();
    streetAddressTextController?.dispose();
  }
}
