import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'live_location_user_widget.dart' show LiveLocationUserWidget;
import 'package:flutter/material.dart';

class LiveLocationUserModel extends FlutterFlowModel<LiveLocationUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Custom Action - runTimerFromString] action in Button widget.
  String? timer;
  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
