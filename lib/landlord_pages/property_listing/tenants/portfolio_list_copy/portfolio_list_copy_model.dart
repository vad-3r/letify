import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'portfolio_list_copy_widget.dart' show PortfolioListCopyWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class PortfolioListCopyModel extends FlutterFlowModel<PortfolioListCopyWidget> {
  ///  Local state fields for this page.

  bool emptyText = false;

  List<StudentRecord> studentList = [];
  void addToStudentList(StudentRecord item) => studentList.add(item);
  void removeFromStudentList(StudentRecord item) => studentList.remove(item);
  void removeAtIndexFromStudentList(int index) => studentList.removeAt(index);
  void insertAtIndexInStudentList(int index, StudentRecord item) =>
      studentList.insert(index, item);
  void updateStudentListAtIndex(int index, Function(StudentRecord) updateFn) =>
      studentList[index] = updateFn(studentList[index]);

  List<UserRecord> userList = [];
  void addToUserList(UserRecord item) => userList.add(item);
  void removeFromUserList(UserRecord item) => userList.remove(item);
  void removeAtIndexFromUserList(int index) => userList.removeAt(index);
  void insertAtIndexInUserList(int index, UserRecord item) =>
      userList.insert(index, item);
  void updateUserListAtIndex(int index, Function(UserRecord) updateFn) =>
      userList[index] = updateFn(userList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for idNumber widget.
  FocusNode? idNumberFocusNode1;
  TextEditingController? idNumberTextController1;
  String? Function(BuildContext, String?)? idNumberTextController1Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in idNumber widget.
  List<StudentRecord>? studentID;
  // State field(s) for studentName widget.
  FocusNode? studentNameFocusNode;
  TextEditingController? studentNameTextController;
  String? Function(BuildContext, String?)? studentNameTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in studentName widget.
  List<StudentRecord>? studentsIDByName;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode1;
  TextEditingController? studentNumberTextController1;
  String? Function(BuildContext, String?)?
      studentNumberTextController1Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in studentNumber widget.
  List<StudentRecord>? studentsIDByStudentNumber;
  // State field(s) for surname widget.
  FocusNode? surnameFocusNode;
  TextEditingController? surnameTextController;
  String? Function(BuildContext, String?)? surnameTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in surname widget.
  List<StudentRecord>? studentsIDByStudentSurname;
  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode;
  TextEditingController? propSearchTextController;
  String? Function(BuildContext, String?)? propSearchTextControllerValidator;
  // State field(s) for idNumber widget.
  FocusNode? idNumberFocusNode2;
  TextEditingController? idNumberTextController2;
  String? Function(BuildContext, String?)? idNumberTextController2Validator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode2;
  TextEditingController? studentNumberTextController2;
  String? Function(BuildContext, String?)?
      studentNumberTextController2Validator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode3;
  TextEditingController? studentNumberTextController3;
  String? Function(BuildContext, String?)?
      studentNumberTextController3Validator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode4;
  TextEditingController? studentNumberTextController4;
  String? Function(BuildContext, String?)?
      studentNumberTextController4Validator;
  // State field(s) for studentNumber widget.
  FocusNode? studentNumberFocusNode5;
  TextEditingController? studentNumberTextController5;
  String? Function(BuildContext, String?)?
      studentNumberTextController5Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    idNumberFocusNode1?.dispose();
    idNumberTextController1?.dispose();

    studentNameFocusNode?.dispose();
    studentNameTextController?.dispose();

    studentNumberFocusNode1?.dispose();
    studentNumberTextController1?.dispose();

    surnameFocusNode?.dispose();
    surnameTextController?.dispose();

    propSearchFocusNode?.dispose();
    propSearchTextController?.dispose();

    idNumberFocusNode2?.dispose();
    idNumberTextController2?.dispose();

    studentNumberFocusNode2?.dispose();
    studentNumberTextController2?.dispose();

    studentNumberFocusNode3?.dispose();
    studentNumberTextController3?.dispose();

    studentNumberFocusNode4?.dispose();
    studentNumberTextController4?.dispose();

    studentNumberFocusNode5?.dispose();
    studentNumberTextController5?.dispose();
  }
}
