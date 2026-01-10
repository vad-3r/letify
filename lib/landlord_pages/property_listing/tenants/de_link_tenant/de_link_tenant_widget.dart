import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'de_link_tenant_model.dart';
export 'de_link_tenant_model.dart';

class DeLinkTenantWidget extends StatefulWidget {
  const DeLinkTenantWidget({
    super.key,
    required this.propertyID,
    required this.roomID,
    required this.studentInRoom,
  });

  final DocumentReference? propertyID;
  final DocumentReference? roomID;
  final DocumentReference? studentInRoom;

  @override
  State<DeLinkTenantWidget> createState() => _DeLinkTenantWidgetState();
}

class _DeLinkTenantWidgetState extends State<DeLinkTenantWidget> {
  late DeLinkTenantModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeLinkTenantModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 60.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 350.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                  child: StreamBuilder<List<StudentRecord>>(
                    stream: queryStudentRecord(
                      queryBuilder: (studentRecord) => studentRecord.where(
                        'student_id',
                        isEqualTo: widget.studentInRoom,
                      ),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitRipple(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<StudentRecord> columnStudentRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final columnStudentRecord =
                          columnStudentRecordList.isNotEmpty
                              ? columnStudentRecordList.first
                              : null;

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              thickness: 3.0,
                              indent: 150.0,
                              endIndent: 150.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'De-Link Tenant',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Are you sure you want to de-link ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              columnStudentRecord
                                                  ?.studentIDNumber,
                                              '[Student in the room]',
                                            ),
                                            style: TextStyle(),
                                          ),
                                          TextSpan(
                                            text: ' from this property?',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 44.0, 0.0, 44.0),
                                  child: StreamBuilder<RoomRecord>(
                                    stream:
                                        RoomRecord.getDocument(widget.roomID!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitRipple(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }

                                      final rowRoomRecord = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                            },
                                            text: 'Cancel',
                                            options: FFButtonOptions(
                                              width: 100.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMediumIsCustom,
                                                      ),
                                              elevation: 2.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              if (rowRoomRecord.fullyBooked) {
                                                await widget.roomID!.update({
                                                  ...createRoomRecordData(
                                                    roomStatus: 'Vacant',
                                                    isGenerated: false,
                                                    isSigned: false,
                                                    isUploaded: false,
                                                    fullyBooked: false,
                                                    lastLinkTimestamp:
                                                        getCurrentTimestamp,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'tenantInRoom':
                                                          FieldValue.delete(),
                                                      'tenant_name':
                                                          FieldValue.delete(),
                                                      'tenant_student_num':
                                                          FieldValue.delete(),
                                                      'tenant_surname':
                                                          FieldValue.delete(),
                                                    },
                                                  ),
                                                });

                                                await widget.propertyID!
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'booked_tenants':
                                                          FieldValue
                                                              .arrayRemove([
                                                        widget.studentInRoom
                                                      ]),
                                                    },
                                                  ),
                                                });

                                                await columnStudentRecord!
                                                    .reference
                                                    .update({
                                                  ...createStudentRecordData(
                                                    hasBooked: false,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'booked_owner':
                                                          FieldValue.delete(),
                                                      'booked_property_id':
                                                          FieldValue.delete(),
                                                      'booked_property_name':
                                                          FieldValue.delete(),
                                                      'booked_room_name':
                                                          FieldValue.delete(),
                                                      'booked_room':
                                                          FieldValue.delete(),
                                                    },
                                                  ),
                                                });
                                                Navigator.pop(context);
                                              } else {
                                                await widget.roomID!.update({
                                                  ...createRoomRecordData(
                                                    roomStatus: 'Vacant',
                                                    isGenerated: false,
                                                    isSigned: false,
                                                    isUploaded: false,
                                                    fullyBooked: false,
                                                    lastLinkTimestamp:
                                                        getCurrentTimestamp,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'tenantInRoom':
                                                          FieldValue.delete(),
                                                      'tenant_name':
                                                          FieldValue.delete(),
                                                      'tenant_student_num':
                                                          FieldValue.delete(),
                                                      'tenant_surname':
                                                          FieldValue.delete(),
                                                    },
                                                  ),
                                                });

                                                await widget.propertyID!
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'studentInProperty':
                                                          FieldValue
                                                              .arrayRemove([
                                                        widget.studentInRoom
                                                      ]),
                                                      'studentsInProperty':
                                                          FieldValue
                                                              .arrayRemove([
                                                        columnStudentRecord
                                                            ?.reference
                                                      ]),
                                                    },
                                                  ),
                                                });

                                                await columnStudentRecord!
                                                    .reference
                                                    .update({
                                                  ...createStudentRecordData(
                                                    linkedToProperty: false,
                                                    hasBooked: false,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'property_id':
                                                          FieldValue.delete(),
                                                      'property_name':
                                                          FieldValue.delete(),
                                                      'owner':
                                                          FieldValue.delete(),
                                                      'room_occupied':
                                                          FieldValue.delete(),
                                                      'room_id':
                                                          FieldValue.delete(),
                                                    },
                                                  ),
                                                });

                                                await widget.studentInRoom!
                                                    .update({
                                                  ...createUserRecordData(
                                                    linkedToProperty: false,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'property_id':
                                                          FieldValue.delete(),
                                                    },
                                                  ),
                                                });
                                                Navigator.pop(context);
                                              }
                                            },
                                            text: 'Yes',
                                            options: FFButtonOptions(
                                              width: 100.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.lexendDeca(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 2.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
