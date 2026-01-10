import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in profile widget.
  PropertyRecord? tenantHouse;
  // Stores action output result for [Firestore Query - Query a collection] action in profile widget.
  StudentRecord? student;
  // Stores action output result for [Firestore Query - Query a collection] action in profile widget.
  ScreeningInfoRecord? screeningInfo;
  // Stores action output result for [Firestore Query - Query a collection] action in profile widget.
  RoomRecord? room;
  // Stores action output result for [Firestore Query - Query a collection] action in profile widget.
  ContractRecord? contract;
  // Stores action output result for [Firestore Query - Query a collection] action in profile widget.
  TenantInfoRecord? tenantInfo;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
