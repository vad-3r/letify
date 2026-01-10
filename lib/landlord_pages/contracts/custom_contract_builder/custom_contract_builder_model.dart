import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custom_contract_builder_widget.dart' show CustomContractBuilderWidget;
import 'package:flutter/material.dart';

class CustomContractBuilderModel
    extends FlutterFlowModel<CustomContractBuilderWidget> {
  ///  Local state fields for this page.

  int noOfSubClauses = 1;

  String? mainClause;

  dynamic subClauseAndIndex;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for MainClause widget.
  FocusNode? mainClauseFocusNode;
  TextEditingController? mainClauseTextController;
  String? Function(BuildContext, String?)? mainClauseTextControllerValidator;
  // State field(s) for numOfsubClausesController widget.
  int? numOfsubClausesControllerValue;
  // State field(s) for sub1 widget.
  FocusNode? sub1FocusNode;
  TextEditingController? sub1TextController;
  String? Function(BuildContext, String?)? sub1TextControllerValidator;
  // State field(s) for sub2 widget.
  FocusNode? sub2FocusNode;
  TextEditingController? sub2TextController;
  String? Function(BuildContext, String?)? sub2TextControllerValidator;
  // State field(s) for sub3 widget.
  FocusNode? sub3FocusNode;
  TextEditingController? sub3TextController;
  String? Function(BuildContext, String?)? sub3TextControllerValidator;
  // State field(s) for sub4 widget.
  FocusNode? sub4FocusNode;
  TextEditingController? sub4TextController;
  String? Function(BuildContext, String?)? sub4TextControllerValidator;
  // State field(s) for sub5 widget.
  FocusNode? sub5FocusNode;
  TextEditingController? sub5TextController;
  String? Function(BuildContext, String?)? sub5TextControllerValidator;
  // State field(s) for sub6 widget.
  FocusNode? sub6FocusNode;
  TextEditingController? sub6TextController;
  String? Function(BuildContext, String?)? sub6TextControllerValidator;
  // State field(s) for sub7 widget.
  FocusNode? sub7FocusNode;
  TextEditingController? sub7TextController;
  String? Function(BuildContext, String?)? sub7TextControllerValidator;
  // State field(s) for sub8 widget.
  FocusNode? sub8FocusNode;
  TextEditingController? sub8TextController;
  String? Function(BuildContext, String?)? sub8TextControllerValidator;
  // State field(s) for sub9 widget.
  FocusNode? sub9FocusNode;
  TextEditingController? sub9TextController;
  String? Function(BuildContext, String?)? sub9TextControllerValidator;
  // State field(s) for sub10 widget.
  FocusNode? sub10FocusNode;
  TextEditingController? sub10TextController;
  String? Function(BuildContext, String?)? sub10TextControllerValidator;
  // State field(s) for sub11 widget.
  FocusNode? sub11FocusNode;
  TextEditingController? sub11TextController;
  String? Function(BuildContext, String?)? sub11TextControllerValidator;
  // State field(s) for sub12 widget.
  FocusNode? sub12FocusNode;
  TextEditingController? sub12TextController;
  String? Function(BuildContext, String?)? sub12TextControllerValidator;
  // State field(s) for sub13 widget.
  FocusNode? sub13FocusNode;
  TextEditingController? sub13TextController;
  String? Function(BuildContext, String?)? sub13TextControllerValidator;
  // State field(s) for sub14 widget.
  FocusNode? sub14FocusNode;
  TextEditingController? sub14TextController;
  String? Function(BuildContext, String?)? sub14TextControllerValidator;
  // State field(s) for sub15 widget.
  FocusNode? sub15FocusNode;
  TextEditingController? sub15TextController;
  String? Function(BuildContext, String?)? sub15TextControllerValidator;
  // State field(s) for sub16 widget.
  FocusNode? sub16FocusNode;
  TextEditingController? sub16TextController;
  String? Function(BuildContext, String?)? sub16TextControllerValidator;
  // State field(s) for sub17 widget.
  FocusNode? sub17FocusNode;
  TextEditingController? sub17TextController;
  String? Function(BuildContext, String?)? sub17TextControllerValidator;
  // State field(s) for sub18 widget.
  FocusNode? sub18FocusNode;
  TextEditingController? sub18TextController;
  String? Function(BuildContext, String?)? sub18TextControllerValidator;
  // State field(s) for sub19 widget.
  FocusNode? sub19FocusNode;
  TextEditingController? sub19TextController;
  String? Function(BuildContext, String?)? sub19TextControllerValidator;
  // State field(s) for sub20 widget.
  FocusNode? sub20FocusNode;
  TextEditingController? sub20TextController;
  String? Function(BuildContext, String?)? sub20TextControllerValidator;
  // State field(s) for sub21 widget.
  FocusNode? sub21FocusNode;
  TextEditingController? sub21TextController;
  String? Function(BuildContext, String?)? sub21TextControllerValidator;
  // State field(s) for sub22 widget.
  FocusNode? sub22FocusNode;
  TextEditingController? sub22TextController;
  String? Function(BuildContext, String?)? sub22TextControllerValidator;
  // State field(s) for sub23 widget.
  FocusNode? sub23FocusNode;
  TextEditingController? sub23TextController;
  String? Function(BuildContext, String?)? sub23TextControllerValidator;
  // State field(s) for sub24 widget.
  FocusNode? sub24FocusNode;
  TextEditingController? sub24TextController;
  String? Function(BuildContext, String?)? sub24TextControllerValidator;
  // State field(s) for sub25 widget.
  FocusNode? sub25FocusNode;
  TextEditingController? sub25TextController;
  String? Function(BuildContext, String?)? sub25TextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ContractBuilderMainClauseRecord? mainClausess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mainClauseFocusNode?.dispose();
    mainClauseTextController?.dispose();

    sub1FocusNode?.dispose();
    sub1TextController?.dispose();

    sub2FocusNode?.dispose();
    sub2TextController?.dispose();

    sub3FocusNode?.dispose();
    sub3TextController?.dispose();

    sub4FocusNode?.dispose();
    sub4TextController?.dispose();

    sub5FocusNode?.dispose();
    sub5TextController?.dispose();

    sub6FocusNode?.dispose();
    sub6TextController?.dispose();

    sub7FocusNode?.dispose();
    sub7TextController?.dispose();

    sub8FocusNode?.dispose();
    sub8TextController?.dispose();

    sub9FocusNode?.dispose();
    sub9TextController?.dispose();

    sub10FocusNode?.dispose();
    sub10TextController?.dispose();

    sub11FocusNode?.dispose();
    sub11TextController?.dispose();

    sub12FocusNode?.dispose();
    sub12TextController?.dispose();

    sub13FocusNode?.dispose();
    sub13TextController?.dispose();

    sub14FocusNode?.dispose();
    sub14TextController?.dispose();

    sub15FocusNode?.dispose();
    sub15TextController?.dispose();

    sub16FocusNode?.dispose();
    sub16TextController?.dispose();

    sub17FocusNode?.dispose();
    sub17TextController?.dispose();

    sub18FocusNode?.dispose();
    sub18TextController?.dispose();

    sub19FocusNode?.dispose();
    sub19TextController?.dispose();

    sub20FocusNode?.dispose();
    sub20TextController?.dispose();

    sub21FocusNode?.dispose();
    sub21TextController?.dispose();

    sub22FocusNode?.dispose();
    sub22TextController?.dispose();

    sub23FocusNode?.dispose();
    sub23TextController?.dispose();

    sub24FocusNode?.dispose();
    sub24TextController?.dispose();

    sub25FocusNode?.dispose();
    sub25TextController?.dispose();
  }
}
