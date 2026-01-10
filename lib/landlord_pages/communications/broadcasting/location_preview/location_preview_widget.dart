import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'location_preview_model.dart';
export 'location_preview_model.dart';

/// create an image preview component with a send button at the bottom
class LocationPreviewWidget extends StatefulWidget {
  const LocationPreviewWidget({
    super.key,
    required this.location,
    required this.broadcastID,
    required this.recipients,
  });

  final LatLng? location;
  final DocumentReference? broadcastID;
  final List<DocumentReference>? recipients;

  @override
  State<LocationPreviewWidget> createState() => _LocationPreviewWidgetState();
}

class _LocationPreviewWidgetState extends State<LocationPreviewWidget> {
  late LocationPreviewModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationPreviewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 500.0,
                height: 300.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Builder(builder: (context) {
                        final _googleMapMarker = widget.location;
                        return FlutterFlowGoogleMap(
                          controller: _model.googleMapsController,
                          onCameraIdle: (latLng) =>
                              _model.googleMapsCenter = latLng,
                          initialLocation: _model.googleMapsCenter ??=
                              widget.location!,
                          markers: [
                            if (_googleMapMarker != null)
                              FlutterFlowMarker(
                                _googleMapMarker.serialize(),
                                _googleMapMarker,
                              ),
                          ],
                          markerColor: GoogleMarkerColor.blue,
                          markerImage: MarkerImage(
                            imagePath: 'assets/images/Letify_Icon.png',
                            isAssetImage: true,
                            size: 30.0 ?? 20,
                          ),
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: widget.location != null,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        );
                      }),
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: PointerInterceptor(
                          intercepting: isWeb,
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0x66000000),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.close_fullscreen_rounded,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            currentUserLocationValue =
                                await getCurrentUserLocation(
                                    defaultLocation: LatLng(0.0, 0.0));

                            var broadcastMessagesRecordReference =
                                BroadcastMessagesRecord.createDoc(
                                    widget.broadcastID!);
                            await broadcastMessagesRecordReference.set({
                              ...createBroadcastMessagesRecordData(
                                broadcastId: widget.broadcastID,
                                sender: currentUserReference,
                                message: 'My Current Location',
                                timestamp: getCurrentTimestamp,
                                currentLocation: widget.location,
                              ),
                              ...mapToFirestore(
                                {
                                  'unread_user_list': widget.recipients,
                                },
                              ),
                            });
                            _model.message =
                                BroadcastMessagesRecord.getDocumentFromData({
                              ...createBroadcastMessagesRecordData(
                                broadcastId: widget.broadcastID,
                                sender: currentUserReference,
                                message: 'My Current Location',
                                timestamp: getCurrentTimestamp,
                                currentLocation: widget.location,
                              ),
                              ...mapToFirestore(
                                {
                                  'unread_user_list': widget.recipients,
                                },
                              ),
                            }, broadcastMessagesRecordReference);

                            await _model.message!.reference.update({
                              ...mapToFirestore(
                                {
                                  'unread_user_list': FieldValue.arrayRemove(
                                      [currentUserReference]),
                                },
                              ),
                            });

                            await widget.broadcastID!.update({
                              ...createBroadcastsRecordData(
                                lastMessage: '',
                                lastMessageTime: getCurrentTimestamp,
                                lastMessageSentRef: _model.message?.reference,
                                lastMessageOwner: currentUserReference,
                              ),
                              ...mapToFirestore(
                                {
                                  'unread_users': widget.recipients,
                                },
                              ),
                            });

                            await widget.broadcastID!.update({
                              ...mapToFirestore(
                                {
                                  'unread_users': FieldValue.arrayRemove(
                                      [currentUserReference]),
                                },
                              ),
                            });

                            await widget.broadcastID!.update({
                              ...mapToFirestore(
                                {
                                  'unread_messages': FieldValue.arrayUnion(
                                      [_model.message?.reference]),
                                },
                              ),
                            });
                            triggerPushNotification(
                              notificationTitle: functions.nameConcat(
                                  currentUserDisplayName,
                                  valueOrDefault(
                                      currentUserDocument?.userSurname, ''))!,
                              notificationText: 'Location 📍',
                              notificationSound: 'default',
                              userRefs: widget.recipients!.toList(),
                              initialPageName: 'Landing_Page',
                              parameterData: {},
                            );

                            await _model.message!.reference
                                .update(createBroadcastMessagesRecordData(
                              currentLocation: currentUserLocationValue,
                            ));
                            Navigator.pop(context);

                            safeSetState(() {});
                          },
                          text: 'Confirm',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 45.0,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 7.0),
                            child: Lottie.asset(
                              'assets/jsons/live_location.json',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                              animate: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
