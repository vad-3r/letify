import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'tenant_name_model.dart';
export 'tenant_name_model.dart';

class TenantNameWidget extends StatefulWidget {
  const TenantNameWidget({
    super.key,
    this.tenantIDNumber,
  });

  final String? tenantIDNumber;

  static String routeName = 'Tenant_Name';
  static String routePath = '/tenantName';

  @override
  State<TenantNameWidget> createState() => _TenantNameWidgetState();
}

class _TenantNameWidgetState extends State<TenantNameWidget> {
  late TenantNameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TenantNameModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              context.pushNamed(PortfolioListWidget.routeName);
            },
          ),
          title: Text(
            'Tenant Information',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Information belonging to: ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              widget.tenantIDNumber,
                                              'tenantIDNumber',
                                            ),
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyLargeIsCustom,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: StreamBuilder<List<UserRecord>>(
                              stream: queryUserRecord(
                                queryBuilder: (userRecord) => userRecord.where(
                                  'display_name',
                                  isEqualTo: widget.tenantIDNumber,
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<UserRecord> listViewUserRecordList =
                                    snapshot.data!;

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewUserRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewUserRecord =
                                        listViewUserRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 2.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 90.0,
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
                                              List<StudentRecord>>(
                                            stream: queryStudentRecord(
                                              queryBuilder: (studentRecord) =>
                                                  studentRecord.where(
                                                'student_id',
                                                isEqualTo: listViewUserRecord
                                                    .reference,
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
                                              List<StudentRecord>
                                                  rowStudentRecordList =
                                                  snapshot.data!;
                                              final rowStudentRecord =
                                                  rowStudentRecordList
                                                          .isNotEmpty
                                                      ? rowStudentRecordList
                                                          .first
                                                      : null;

                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.nameConcat(
                                                              listViewUserRecord
                                                                  .displayName,
                                                              listViewUserRecord
                                                                  .userSurname),
                                                          'Tenant Name',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                      RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Student Number:  ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  valueOrDefault<
                                                                      String>(
                                                                rowStudentRecord
                                                                    ?.studentNumber,
                                                                'Tenant did not provide student number',
                                                              ),
                                                              style: TextStyle(
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  '\nID Number: ',
                                                              style: TextStyle(
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  valueOrDefault<
                                                                      String>(
                                                                rowStudentRecord
                                                                    ?.studentIDNumber,
                                                                'Tenant did not provide ID number',
                                                              ),
                                                              style: TextStyle(
                                                                fontSize: 14.0,
                                                              ),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                            TenantDetailsWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'userID':
                                                                  serializeParam(
                                                                listViewUserRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'tenantName':
                                                                  serializeParam(
                                                                functions.nameConcat(
                                                                    listViewUserRecord
                                                                        .displayName,
                                                                    listViewUserRecord
                                                                        .userSurname),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text: 'View',
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
                                                                      12.0),
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
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
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
