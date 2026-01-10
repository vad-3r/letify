import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'properties_for_communication_agent_widget.dart'
    show PropertiesForCommunicationAgentWidget;
import 'package:flutter/material.dart';

class PropertiesForCommunicationAgentModel
    extends FlutterFlowModel<PropertiesForCommunicationAgentWidget> {
  ///  Local state fields for this page.

  bool emptyText = true;

  List<TipOffsRecord> results = [];
  void addToResults(TipOffsRecord item) => results.add(item);
  void removeFromResults(TipOffsRecord item) => results.remove(item);
  void removeAtIndexFromResults(int index) => results.removeAt(index);
  void insertAtIndexInResults(int index, TipOffsRecord item) =>
      results.insert(index, item);
  void updateResultsAtIndex(int index, Function(TipOffsRecord) updateFn) =>
      results[index] = updateFn(results[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for propSearch widget.
  FocusNode? propSearchFocusNode;
  TextEditingController? propSearchTextController;
  String? Function(BuildContext, String?)? propSearchTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in propSearch widget.
  List<TipOffsRecord>? tipOff;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propSearchFocusNode?.dispose();
    propSearchTextController?.dispose();
  }
}
