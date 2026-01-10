import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'properties_for_mulit_house_group_agent_widget.dart'
    show PropertiesForMulitHouseGroupAgentWidget;
import 'package:flutter/material.dart';

class PropertiesForMulitHouseGroupAgentModel
    extends FlutterFlowModel<PropertiesForMulitHouseGroupAgentWidget> {
  ///  Local state fields for this page.

  bool emptyText = true;

  List<DocumentReference> reciepients = [];
  void addToReciepients(DocumentReference item) => reciepients.add(item);
  void removeFromReciepients(DocumentReference item) =>
      reciepients.remove(item);
  void removeAtIndexFromReciepients(int index) => reciepients.removeAt(index);
  void insertAtIndexInReciepients(int index, DocumentReference item) =>
      reciepients.insert(index, item);
  void updateReciepientsAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      reciepients[index] = updateFn(reciepients[index]);

  int? intIncrement;

  int selectNum = 0;

  List<DocumentReference> placeHolderList = [];
  void addToPlaceHolderList(DocumentReference item) =>
      placeHolderList.add(item);
  void removeFromPlaceHolderList(DocumentReference item) =>
      placeHolderList.remove(item);
  void removeAtIndexFromPlaceHolderList(int index) =>
      placeHolderList.removeAt(index);
  void insertAtIndexInPlaceHolderList(int index, DocumentReference item) =>
      placeHolderList.insert(index, item);
  void updatePlaceHolderListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      placeHolderList[index] = updateFn(placeHolderList[index]);

  List<DocumentReference> propertyList = [];
  void addToPropertyList(DocumentReference item) => propertyList.add(item);
  void removeFromPropertyList(DocumentReference item) =>
      propertyList.remove(item);
  void removeAtIndexFromPropertyList(int index) => propertyList.removeAt(index);
  void insertAtIndexInPropertyList(int index, DocumentReference item) =>
      propertyList.insert(index, item);
  void updatePropertyListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      propertyList[index] = updateFn(propertyList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode;
  TextEditingController? propSearchTextController;
  String? Function(BuildContext, String?)? propSearchTextControllerValidator;
  // State field(s) for Checkbox widget.
  Map<PropertyRecord, bool> checkboxValueMap1 = {};
  List<PropertyRecord> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<PropertyRecord, bool> checkboxValueMap2 = {};
  List<PropertyRecord> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propSearchFocusNode?.dispose();
    propSearchTextController?.dispose();
  }
}
