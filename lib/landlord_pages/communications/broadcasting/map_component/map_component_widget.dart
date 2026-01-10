import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'map_component_model.dart';
export 'map_component_model.dart';

class MapComponentWidget extends StatefulWidget {
  const MapComponentWidget({
    super.key,
    this.parameter1,
  });

  final LatLng? parameter1;

  @override
  State<MapComponentWidget> createState() => _MapComponentWidgetState();
}

class _MapComponentWidgetState extends State<MapComponentWidget> {
  late MapComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final _googleMapMarker = widget.parameter1;
      return FlutterFlowGoogleMap(
        controller: _model.googleMapsController,
        onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
        initialLocation: _model.googleMapsCenter ??= widget.parameter1!,
        markers: [
          if (_googleMapMarker != null)
            FlutterFlowMarker(
              _googleMapMarker.serialize(),
              _googleMapMarker,
            ),
        ],
        markerColor: GoogleMarkerColor.violet,
        markerImage: MarkerImage(
          imagePath: 'assets/images/FilterImage_(1).png',
          isAssetImage: true,
          size: 50.0 ?? 20,
        ),
        mapType: MapType.normal,
        style: GoogleMapStyle.standard,
        initialZoom: 14.0,
        allowInteraction: false,
        allowZoom: false,
        showZoomControls: false,
        showLocation: true,
        showCompass: false,
        showMapToolbar: false,
        showTraffic: false,
        centerMapOnMarkerTap: true,
      );
    });
  }
}
