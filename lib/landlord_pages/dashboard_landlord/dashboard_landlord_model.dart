import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dashboard_landlord_widget.dart' show DashboardLandlordWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class DashboardLandlordModel extends FlutterFlowModel<DashboardLandlordWidget> {
  ///  Local state fields for this page.

  int? countDownValue;

  int? intIncrement = 0;

  List<DocumentReference> lstUnreadMessage = [];
  void addToLstUnreadMessage(DocumentReference item) =>
      lstUnreadMessage.add(item);
  void removeFromLstUnreadMessage(DocumentReference item) =>
      lstUnreadMessage.remove(item);
  void removeAtIndexFromLstUnreadMessage(int index) =>
      lstUnreadMessage.removeAt(index);
  void insertAtIndexInLstUnreadMessage(int index, DocumentReference item) =>
      lstUnreadMessage.insert(index, item);
  void updateLstUnreadMessageAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstUnreadMessage[index] = updateFn(lstUnreadMessage[index]);

  List<BroadcastsRecord> resultAll = [];
  void addToResultAll(BroadcastsRecord item) => resultAll.add(item);
  void removeFromResultAll(BroadcastsRecord item) => resultAll.remove(item);
  void removeAtIndexFromResultAll(int index) => resultAll.removeAt(index);
  void insertAtIndexInResultAll(int index, BroadcastsRecord item) =>
      resultAll.insert(index, item);
  void updateResultAllAtIndex(int index, Function(BroadcastsRecord) updateFn) =>
      resultAll[index] = updateFn(resultAll[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode;
  TextEditingController? propSearchTextController;
  String? Function(BuildContext, String?)? propSearchTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in propSearch widget.
  List<BroadcastsRecord>? chats;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    propSearchFocusNode?.dispose();
    propSearchTextController?.dispose();
  }
}
