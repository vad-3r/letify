import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'employee_stats_widget.dart' show EmployeeStatsWidget;
import 'package:flutter/material.dart';

class EmployeeStatsModel extends FlutterFlowModel<EmployeeStatsWidget> {
  ///  Local state fields for this page.

  int? countDownValue;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Employee_Stats widget.
  List<PortfolioRecord>? portfoliosAgent;
  // Stores action output result for [Custom Action - getLinkedPropertiesCopy] action in Employee_Stats widget.
  List<DocumentReference>? propertiesAgent;
  // Stores action output result for [Custom Action - getAllRooms] action in Employee_Stats widget.
  int? allRoomsAgent;
  // Stores action output result for [Custom Action - getOccupiedRooms] action in Employee_Stats widget.
  int? occupiedRoomsAgent;
  // Stores action output result for [Custom Action - getTenantsSigned] action in Employee_Stats widget.
  int? tenantsSigned;
  // Stores action output result for [Custom Action - getContractsGenerated] action in Employee_Stats widget.
  int? contractsSent;
  // Stores action output result for [Custom Action - getVacantRooms] action in Employee_Stats widget.
  int? vacantRoomsAgent;
  // Stores action output result for [Custom Action - getBachelorRooms] action in Employee_Stats widget.
  int? bachelorRooms;
  // Stores action output result for [Custom Action - getVacantBachelorRooms] action in Employee_Stats widget.
  int? vacantbachelorRooms;
  // Stores action output result for [Custom Action - countdownFromFour] action in Employee_Stats widget.
  int? countDown;
  // Stores action output result for [Custom Action - getFlatRooms] action in Employee_Stats widget.
  int? flats;
  // Stores action output result for [Custom Action - getVacantFlatRooms] action in Employee_Stats widget.
  int? vacantFlats;
  // Stores action output result for [Custom Action - getSharingRooms] action in Employee_Stats widget.
  int? sharingRooms;
  // Stores action output result for [Custom Action - getVacantSharingRooms] action in Employee_Stats widget.
  int? vacantSharingRooms;
  // Stores action output result for [Custom Action - getSingleRooms] action in Employee_Stats widget.
  int? singleRooms;
  // Stores action output result for [Custom Action - getVacantSingleRooms] action in Employee_Stats widget.
  int? vacantSingleRooms;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
