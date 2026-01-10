import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'unit_analytics_linked_widget.dart' show UnitAnalyticsLinkedWidget;
import 'package:flutter/material.dart';

class UnitAnalyticsLinkedModel
    extends FlutterFlowModel<UnitAnalyticsLinkedWidget> {
  ///  Local state fields for this page.

  List<PropertyRecord> propertyIDs = [];
  void addToPropertyIDs(PropertyRecord item) => propertyIDs.add(item);
  void removeFromPropertyIDs(PropertyRecord item) => propertyIDs.remove(item);
  void removeAtIndexFromPropertyIDs(int index) => propertyIDs.removeAt(index);
  void insertAtIndexInPropertyIDs(int index, PropertyRecord item) =>
      propertyIDs.insert(index, item);
  void updatePropertyIDsAtIndex(int index, Function(PropertyRecord) updateFn) =>
      propertyIDs[index] = updateFn(propertyIDs[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
