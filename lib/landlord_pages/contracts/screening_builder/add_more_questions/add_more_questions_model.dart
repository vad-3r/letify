import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_more_questions_widget.dart' show AddMoreQuestionsWidget;
import 'package:flutter/material.dart';

class AddMoreQuestionsModel extends FlutterFlowModel<AddMoreQuestionsWidget> {
  ///  Local state fields for this component.

  int? numOfAnswers = 1;

  dynamic ansAndPoint;

  String? question;

  String? companyName;

  ///  State fields for stateful widgets in this component.

  // State field(s) for question widget.
  FocusNode? questionFocusNode;
  TextEditingController? questionTextController;
  String? Function(BuildContext, String?)? questionTextControllerValidator;
  // State field(s) for numOfAnsController widget.
  int? numOfAnsControllerValue;
  // State field(s) for ans1 widget.
  FocusNode? ans1FocusNode;
  TextEditingController? ans1TextController;
  String? Function(BuildContext, String?)? ans1TextControllerValidator;
  // State field(s) for point1 widget.
  FocusNode? point1FocusNode;
  TextEditingController? point1TextController;
  String? Function(BuildContext, String?)? point1TextControllerValidator;
  // State field(s) for ans2 widget.
  FocusNode? ans2FocusNode;
  TextEditingController? ans2TextController;
  String? Function(BuildContext, String?)? ans2TextControllerValidator;
  // State field(s) for point2 widget.
  FocusNode? point2FocusNode;
  TextEditingController? point2TextController;
  String? Function(BuildContext, String?)? point2TextControllerValidator;
  // State field(s) for ans3 widget.
  FocusNode? ans3FocusNode;
  TextEditingController? ans3TextController;
  String? Function(BuildContext, String?)? ans3TextControllerValidator;
  // State field(s) for point3 widget.
  FocusNode? point3FocusNode;
  TextEditingController? point3TextController;
  String? Function(BuildContext, String?)? point3TextControllerValidator;
  // State field(s) for ans4 widget.
  FocusNode? ans4FocusNode;
  TextEditingController? ans4TextController;
  String? Function(BuildContext, String?)? ans4TextControllerValidator;
  // State field(s) for point4 widget.
  FocusNode? point4FocusNode;
  TextEditingController? point4TextController;
  String? Function(BuildContext, String?)? point4TextControllerValidator;
  // State field(s) for ans5 widget.
  FocusNode? ans5FocusNode;
  TextEditingController? ans5TextController;
  String? Function(BuildContext, String?)? ans5TextControllerValidator;
  // State field(s) for point5 widget.
  FocusNode? point5FocusNode;
  TextEditingController? point5TextController;
  String? Function(BuildContext, String?)? point5TextControllerValidator;
  // State field(s) for ans6 widget.
  FocusNode? ans6FocusNode;
  TextEditingController? ans6TextController;
  String? Function(BuildContext, String?)? ans6TextControllerValidator;
  // State field(s) for point6 widget.
  FocusNode? point6FocusNode;
  TextEditingController? point6TextController;
  String? Function(BuildContext, String?)? point6TextControllerValidator;
  // State field(s) for ans7 widget.
  FocusNode? ans7FocusNode;
  TextEditingController? ans7TextController;
  String? Function(BuildContext, String?)? ans7TextControllerValidator;
  // State field(s) for point7 widget.
  FocusNode? point7FocusNode;
  TextEditingController? point7TextController;
  String? Function(BuildContext, String?)? point7TextControllerValidator;
  // State field(s) for ans8 widget.
  FocusNode? ans8FocusNode;
  TextEditingController? ans8TextController;
  String? Function(BuildContext, String?)? ans8TextControllerValidator;
  // State field(s) for point8 widget.
  FocusNode? point8FocusNode;
  TextEditingController? point8TextController;
  String? Function(BuildContext, String?)? point8TextControllerValidator;
  // State field(s) for ans9 widget.
  FocusNode? ans9FocusNode;
  TextEditingController? ans9TextController;
  String? Function(BuildContext, String?)? ans9TextControllerValidator;
  // State field(s) for point9 widget.
  FocusNode? point9FocusNode;
  TextEditingController? point9TextController;
  String? Function(BuildContext, String?)? point9TextControllerValidator;
  // State field(s) for ans10 widget.
  FocusNode? ans10FocusNode;
  TextEditingController? ans10TextController;
  String? Function(BuildContext, String?)? ans10TextControllerValidator;
  // State field(s) for point10 widget.
  FocusNode? point10FocusNode;
  TextEditingController? point10TextController;
  String? Function(BuildContext, String?)? point10TextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ScreeningBuilderQuestionRecord? questionss;
  // Stores action output result for [Custom Action - extractAndStoreAnswers] action in Button widget.
  bool? success;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    questionFocusNode?.dispose();
    questionTextController?.dispose();

    ans1FocusNode?.dispose();
    ans1TextController?.dispose();

    point1FocusNode?.dispose();
    point1TextController?.dispose();

    ans2FocusNode?.dispose();
    ans2TextController?.dispose();

    point2FocusNode?.dispose();
    point2TextController?.dispose();

    ans3FocusNode?.dispose();
    ans3TextController?.dispose();

    point3FocusNode?.dispose();
    point3TextController?.dispose();

    ans4FocusNode?.dispose();
    ans4TextController?.dispose();

    point4FocusNode?.dispose();
    point4TextController?.dispose();

    ans5FocusNode?.dispose();
    ans5TextController?.dispose();

    point5FocusNode?.dispose();
    point5TextController?.dispose();

    ans6FocusNode?.dispose();
    ans6TextController?.dispose();

    point6FocusNode?.dispose();
    point6TextController?.dispose();

    ans7FocusNode?.dispose();
    ans7TextController?.dispose();

    point7FocusNode?.dispose();
    point7TextController?.dispose();

    ans8FocusNode?.dispose();
    ans8TextController?.dispose();

    point8FocusNode?.dispose();
    point8TextController?.dispose();

    ans9FocusNode?.dispose();
    ans9TextController?.dispose();

    point9FocusNode?.dispose();
    point9TextController?.dispose();

    ans10FocusNode?.dispose();
    ans10TextController?.dispose();

    point10FocusNode?.dispose();
    point10TextController?.dispose();
  }
}
