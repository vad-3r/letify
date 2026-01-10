import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_statistics_widget.dart' show ProfileStatisticsWidget;
import 'package:flutter/material.dart';

class ProfileStatisticsModel extends FlutterFlowModel<ProfileStatisticsWidget> {
  ///  Local state fields for this page.

  int? countDownValue;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Profile_Statistics widget.
  List<PortfolioRecord>? portfolio;
  // Stores action output result for [Firestore Query - Query a collection] action in Profile_Statistics widget.
  List<PortfolioRecord>? linkedPorts;
  // Stores action output result for [Custom Action - getLinkedProperties] action in Profile_Statistics widget.
  int? linkedProperties;
  // Stores action output result for [Firestore Query - Query a collection] action in Profile_Statistics widget.
  List<PropertyRecord>? properties;
  // Stores action output result for [Custom Action - getAllRooms] action in Profile_Statistics widget.
  int? allRooms;
  // Stores action output result for [Custom Action - getOccupiedRooms] action in Profile_Statistics widget.
  int? occupiedRooms;
  // Stores action output result for [Custom Action - getBachelorRooms] action in Profile_Statistics widget.
  int? bachelorRooms;
  // Stores action output result for [Custom Action - getFlatRooms] action in Profile_Statistics widget.
  int? flatRooms;
  // Stores action output result for [Custom Action - getSharingRooms] action in Profile_Statistics widget.
  int? sharingRooms;
  // Stores action output result for [Custom Action - getSingleRooms] action in Profile_Statistics widget.
  int? singleRooms;
  // Stores action output result for [Custom Action - getTotalTenantCount] action in Profile_Statistics widget.
  int? sentContracts;
  // Stores action output result for [Custom Action - getContractsGenerated] action in Profile_Statistics widget.
  int? contractsSent;
  // Stores action output result for [Custom Action - getTenantsSigned] action in Profile_Statistics widget.
  int? signedContracts;
  // Stores action output result for [Custom Action - getVacantBachelorRooms] action in Profile_Statistics widget.
  int? vacantBachelorRooms;
  // Stores action output result for [Custom Action - getVacantFlatRooms] action in Profile_Statistics widget.
  int? vacantFlats;
  // Stores action output result for [Custom Action - getVacantRooms] action in Profile_Statistics widget.
  int? vacantRooms;
  // Stores action output result for [Custom Action - getVacantSharingRooms] action in Profile_Statistics widget.
  int? vacantSharingRooms;
  // Stores action output result for [Custom Action - getVacantSingleRooms] action in Profile_Statistics widget.
  int? vacantSingleRooms;
  // Stores action output result for [Custom Action - countdownFromFour] action in Profile_Statistics widget.
  int? countDown;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
