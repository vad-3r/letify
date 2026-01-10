import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'student_dashboard1_widget.dart' show StudentDashboard1Widget;
import 'package:flutter/material.dart';

class StudentDashboard1Model extends FlutterFlowModel<StudentDashboard1Widget> {
  ///  Local state fields for this page.

  int? intIncrement = 0;

  List<DocumentReference> lstUnreadMessagesRefs = [];
  void addToLstUnreadMessagesRefs(DocumentReference item) =>
      lstUnreadMessagesRefs.add(item);
  void removeFromLstUnreadMessagesRefs(DocumentReference item) =>
      lstUnreadMessagesRefs.remove(item);
  void removeAtIndexFromLstUnreadMessagesRefs(int index) =>
      lstUnreadMessagesRefs.removeAt(index);
  void insertAtIndexInLstUnreadMessagesRefs(
          int index, DocumentReference item) =>
      lstUnreadMessagesRefs.insert(index, item);
  void updateLstUnreadMessagesRefsAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lstUnreadMessagesRefs[index] = updateFn(lstUnreadMessagesRefs[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Student_Dashboard1 widget.
  PropertyRecord? tenantProperty;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
