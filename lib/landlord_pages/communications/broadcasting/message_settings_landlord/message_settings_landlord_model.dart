import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'message_settings_landlord_widget.dart'
    show MessageSettingsLandlordWidget;
import 'package:flutter/material.dart';

class MessageSettingsLandlordModel
    extends FlutterFlowModel<MessageSettingsLandlordWidget> {
  ///  Local state fields for this page.

  DateTime? timeChosen;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Message_Settings_Landlord widget.
  List<AutomatedMessagesRecord>? autoMessage;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<BroadcastsRecord>? groups;
  // Stores action output result for [Custom Action - setupAutomatedMessageVersion2] action in Button widget.
  bool? automatedMessageSet;
  // State field(s) for lesseeName widget.
  FocusNode? lesseeNameFocusNode;
  TextEditingController? lesseeNameTextController;
  String? Function(BuildContext, String?)? lesseeNameTextControllerValidator;
  // State field(s) for period widget.
  String? periodValue;
  FormFieldController<String>? periodValueController;
  // State field(s) for recipients widget.
  String? recipientsValue;
  FormFieldController<String>? recipientsValueController;
  // State field(s) for daysOfWeek widget.
  String? daysOfWeekValue;
  FormFieldController<String>? daysOfWeekValueController;
  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Switch widget.
  bool? switchValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lesseeNameFocusNode?.dispose();
    lesseeNameTextController?.dispose();
  }
}
