import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'anonymous_tip_off_widget.dart' show AnonymousTipOffWidget;
import 'package:flutter/material.dart';

class AnonymousTipOffModel extends FlutterFlowModel<AnonymousTipOffWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> userList = [];
  void addToUserList(DocumentReference item) => userList.add(item);
  void removeFromUserList(DocumentReference item) => userList.remove(item);
  void removeAtIndexFromUserList(int index) => userList.removeAt(index);
  void insertAtIndexInUserList(int index, DocumentReference item) =>
      userList.insert(index, item);
  void updateUserListAtIndex(int index, Function(DocumentReference) updateFn) =>
      userList[index] = updateFn(userList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Anonymous_Tip_Off widget.
  List<AgentRecord>? agents;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
