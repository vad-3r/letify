import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'room_builder_widget.dart' show RoomBuilderWidget;
import 'package:flutter/material.dart';

class RoomBuilderModel extends FlutterFlowModel<RoomBuilderWidget> {
  ///  Local state fields for this page.

  bool selectedCheckboxSharing = true;

  bool selectedCheckboxSingle = true;

  bool selectedCheckboxFlat = true;

  bool selectedCheckboxBachlor = true;

  bool selectedCheckboxHouse = true;

  bool selectedCheckboxCommercial = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for sharingCheck widget.
  Map<RoomRecord, bool> sharingCheckValueMap = {};
  List<RoomRecord> get sharingCheckCheckedItems => sharingCheckValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for singleCheck widget.
  Map<RoomRecord, bool> singleCheckValueMap = {};
  List<RoomRecord> get singleCheckCheckedItems => singleCheckValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for flatCheck widget.
  Map<RoomRecord, bool> flatCheckValueMap = {};
  List<RoomRecord> get flatCheckCheckedItems => flatCheckValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for bachlorCheck widget.
  Map<RoomRecord, bool> bachlorCheckValueMap = {};
  List<RoomRecord> get bachlorCheckCheckedItems => bachlorCheckValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for houseCheck widget.
  Map<RoomRecord, bool> houseCheckValueMap = {};
  List<RoomRecord> get houseCheckCheckedItems => houseCheckValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for commercialCheck widget.
  Map<RoomRecord, bool> commercialCheckValueMap = {};
  List<RoomRecord> get commercialCheckCheckedItems =>
      commercialCheckValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
