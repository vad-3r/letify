import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'link_tenant_i_d_model.dart';
export 'link_tenant_i_d_model.dart';

class LinkTenantIDWidget extends StatefulWidget {
  const LinkTenantIDWidget({
    super.key,
    required this.portfolioName,
    required this.portfolioID,
    required this.roomID,
    required this.iDNumber,
    required this.propertyName,
    required this.propertyID,
    required this.propertyStringID,
    required this.roomName,
  });

  final String? portfolioName;
  final DocumentReference? portfolioID;
  final RoomRecord? roomID;
  final String? iDNumber;
  final String? propertyName;
  final DocumentReference? propertyID;
  final String? propertyStringID;
  final String? roomName;

  static String routeName = 'Link_TenantID';
  static String routePath = '/linkTenantID';

  @override
  State<LinkTenantIDWidget> createState() => _LinkTenantIDWidgetState();
}

class _LinkTenantIDWidgetState extends State<LinkTenantIDWidget> {
  late LinkTenantIDModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkTenantIDModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.lstStudentsID = await queryStudentRecordOnce(
        queryBuilder: (studentRecord) => studentRecord
            .where(
              'student_IDNumber',
              isEqualTo: widget.iDNumber,
            )
            .where(
              'linked_to_property',
              isEqualTo: false,
            ),
      );
      _model.lstStudent = _model.lstStudentsID!.toList().cast<StudentRecord>();
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(
                HomeBuilderWidget.routeName,
                queryParameters: {
                  'propertyID': serializeParam(
                    widget.propertyID,
                    ParamType.DocumentReference,
                  ),
                  'propertyName': serializeParam(
                    widget.propertyName,
                    ParamType.String,
                  ),
                  'portfolioName': serializeParam(
                    widget.portfolioName,
                    ParamType.String,
                  ),
                  'portfolioID': serializeParam(
                    widget.portfolioID,
                    ParamType.DocumentReference,
                  ),
                  'propertyStringID': serializeParam(
                    widget.propertyStringID,
                    ParamType.String,
                  ),
                }.withoutNulls,
              );
            },
          ),
          title: Text(
            'Link Tenant',
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Below is the user on the system who matches: ',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                            ),
                            TextSpan(
                              text: valueOrDefault<String>(
                                widget.iDNumber,
                                '0',
                              ),
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<StudentRecord>>(
                        stream: queryStudentRecord(
                          queryBuilder: (studentRecord) => studentRecord
                              .where(
                                'student_IDNumber',
                                isEqualTo: widget.iDNumber,
                              )
                              .where(
                                'linked_to_property',
                                isEqualTo: false,
                              ),
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
                          List<StudentRecord> listViewStudentRecordList =
                              snapshot.data!;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewStudentRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewStudentRecord =
                                  listViewStudentRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 1.0, 12.0, 0.0),
                                child: StreamBuilder<List<UserRecord>>(
                                  stream: queryUserRecord(
                                    queryBuilder: (userRecord) =>
                                        userRecord.where(
                                      'uid',
                                      isEqualTo:
                                          listViewStudentRecord.studentId?.id,
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<UserRecord> containerUserRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final containerUserRecord =
                                        containerUserRecordList.isNotEmpty
                                            ? containerUserRecordList.first
                                            : null;

                                    return Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: StreamBuilder<
                                              List<ScreeningInfoRecord>>(
                                            stream: queryScreeningInfoRecord(
                                              queryBuilder:
                                                  (screeningInfoRecord) =>
                                                      screeningInfoRecord.where(
                                                'student_id',
                                                isEqualTo: listViewStudentRecord
                                                    .studentId,
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ScreeningInfoRecord>
                                                  rowScreeningInfoRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final rowScreeningInfoRecord =
                                                  rowScreeningInfoRecordList
                                                          .isNotEmpty
                                                      ? rowScreeningInfoRecordList
                                                          .first
                                                      : null;

                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewStudentRecord
                                                                .studentIDNumber,
                                                            'ID Number',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLargeIsCustom,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      6.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'Student Number: ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: valueOrDefault<
                                                                      String>(
                                                                    listViewStudentRecord
                                                                        .studentNumber,
                                                                    '0',
                                                                  ),
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      '\nInstitution:  ',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: valueOrDefault<
                                                                      String>(
                                                                    listViewStudentRecord
                                                                        .studentInstitution,
                                                                    'Institution',
                                                                  ),
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      '\nScreening Status: ',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: () {
                                                                    if ((rowScreeningInfoRecord?.isReviewed ==
                                                                            true) &&
                                                                        (rowScreeningInfoRecord?.isApproved ==
                                                                            true)) {
                                                                      return 'Approved';
                                                                    } else if ((rowScreeningInfoRecord?.isReviewed ==
                                                                            true) &&
                                                                        (rowScreeningInfoRecord?.isApproved ==
                                                                            false)) {
                                                                      return 'Denied';
                                                                    } else {
                                                                      return 'Pending Approval';
                                                                    }
                                                                  }(),
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      '\nLinked To Property: ',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: listViewStudentRecord
                                                                              .linkedToProperty ==
                                                                          true
                                                                      ? 'Yes'
                                                                      : 'No',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyLargeIsCustom,
                                                                  ),
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          await widget
                                                              .roomID!.reference
                                                              .update(
                                                                  createRoomRecordData(
                                                            tenantInRoom:
                                                                listViewStudentRecord
                                                                    .studentId,
                                                            roomStatus:
                                                                'Occupied',
                                                            tenantName: functions.nameConcat(
                                                                containerUserRecord
                                                                    ?.displayName,
                                                                containerUserRecord
                                                                    ?.userSurname),
                                                            tenantStudentNum:
                                                                listViewStudentRecord
                                                                    .studentNumber,
                                                          ));

                                                          await widget
                                                              .propertyID!
                                                              .update({
                                                            ...mapToFirestore(
                                                              {
                                                                'studentsInProperty':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  listViewStudentRecord
                                                                      .reference
                                                                ]),
                                                                'studentInProperty':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  listViewStudentRecord
                                                                      .studentId
                                                                ]),
                                                              },
                                                            ),
                                                          });

                                                          await listViewStudentRecord
                                                              .reference
                                                              .update(
                                                                  createStudentRecordData(
                                                            linkedToProperty:
                                                                true,
                                                            propertyId: widget
                                                                .propertyID,
                                                            propertyName: widget
                                                                .propertyName,
                                                            tenantName:
                                                                containerUserRecord
                                                                    ?.displayName,
                                                            tenantSurname:
                                                                containerUserRecord
                                                                    ?.userSurname,
                                                            owner:
                                                                currentUserReference,
                                                            roomOccupied:
                                                                widget
                                                                    .roomName,
                                                          ));

                                                          await listViewStudentRecord
                                                              .studentId!
                                                              .update(
                                                                  createUserRecordData(
                                                            propertyId: widget
                                                                .propertyID,
                                                            linkedToProperty:
                                                                true,
                                                          ));

                                                          context.pushNamed(
                                                            HomeBuilderWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'propertyID':
                                                                  serializeParam(
                                                                widget
                                                                    .propertyID,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'propertyName':
                                                                  serializeParam(
                                                                widget
                                                                    .propertyName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'portfolioName':
                                                                  serializeParam(
                                                                widget
                                                                    .portfolioName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'portfolioID':
                                                                  serializeParam(
                                                                widget
                                                                    .portfolioID,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'propertyStringID':
                                                                  serializeParam(
                                                                widget
                                                                    .propertyStringID,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text: 'Link',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .titleSmallIsCustom,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ],
                  ),
                ),
                if (_model.lstStudent.unique((e) => widget.iDNumber!).length ==
                    0)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'No student found matching ID number: ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                            TextSpan(
                              text: valueOrDefault<String>(
                                widget.iDNumber,
                                'ID Number',
                              ),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
