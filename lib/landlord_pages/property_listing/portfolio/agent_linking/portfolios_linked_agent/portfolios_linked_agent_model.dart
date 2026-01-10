import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'portfolios_linked_agent_widget.dart' show PortfoliosLinkedAgentWidget;
import 'package:flutter/material.dart';

class PortfoliosLinkedAgentModel
    extends FlutterFlowModel<PortfoliosLinkedAgentWidget> {
  ///  Local state fields for this component.

  int? index = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<PortfolioRecord, bool> checkboxValueMap = {};
  List<PortfolioRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
