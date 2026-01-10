import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'live_location_other_user_widget.dart' show LiveLocationOtherUserWidget;
import 'package:flutter/material.dart';

class LiveLocationOtherUserModel
    extends FlutterFlowModel<LiveLocationOtherUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
