import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'add_employee_model.dart';
export 'add_employee_model.dart';

class AddEmployeeWidget extends StatefulWidget {
  const AddEmployeeWidget({
    super.key,
    required this.broadcastID,
    required this.broadcastName,
  });

  final DocumentReference? broadcastID;
  final String? broadcastName;

  static String routeName = 'Add_Employee';
  static String routePath = '/addEmployee';

  @override
  State<AddEmployeeWidget> createState() => _AddEmployeeWidgetState();
}

class _AddEmployeeWidgetState extends State<AddEmployeeWidget> {
  late AddEmployeeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddEmployeeModel());

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
        floatingActionButton: Visibility(
          visible: _model.selectNum != 0,
          child: FloatingActionButton.extended(
            onPressed: () async {
              triggerPushNotification(
                notificationTitle: widget.broadcastName!,
                notificationText: 'You have been added to group',
                notificationSound: 'default',
                userRefs: _model.addedPeaple.toList(),
                initialPageName: 'Employee_Dashboard',
                parameterData: {},
              );
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return WebViewAware(
                    child: AlertDialog(
                      title: Text('Added Successfully '),
                      content: Text(functions.nameConcatCopy(
                          'You have successfully added ',
                          _model.addedPeaple.length.toString(),
                          'people')!),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    ),
                  );
                },
              );

              await widget.broadcastID!.update({
                ...mapToFirestore(
                  {
                    'num_of_recipients':
                        FieldValue.increment(_model.addedPeaple.length),
                  },
                ),
              });

              context.pushNamed(
                ChatDetailsCopyWidget.routeName,
                queryParameters: {
                  'broadcastID': serializeParam(
                    widget.broadcastID,
                    ParamType.DocumentReference,
                  ),
                }.withoutNulls,
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            label: Text(
              'Next',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ),
        ),
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
              context.safePop();
            },
          ),
          title: Text(
            'Add Employee',
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 6.0, 48.0),
                          child: FutureBuilder<List<UserRecord>>(
                            future: queryUserRecordOnce(
                              queryBuilder: (userRecord) => userRecord
                                  .where(
                                    'employer',
                                    arrayContains: currentUserReference,
                                  )
                                  .orderBy('display_name'),
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
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<UserRecord> listViewOUserRecordList =
                                  snapshot.data!;

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewOUserRecordList.length,
                                itemBuilder: (context, listViewOIndex) {
                                  final listViewOUserRecord =
                                      listViewOUserRecordList[listViewOIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 2.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 80.0,
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
                                        padding: EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 48.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        functions.nameConcat(
                                                            listViewOUserRecord
                                                                .displayName,
                                                            listViewOUserRecord
                                                                .userSurname),
                                                        'Name',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            StreamBuilder<BroadcastsRecord>(
                                              stream:
                                                  BroadcastsRecord.getDocument(
                                                      widget.broadcastID!),
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

                                                final columnBroadcastsRecord =
                                                    snapshot.data!;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                    .checkboxValueMap[
                                                                listViewOUserRecord] ??=
                                                            columnBroadcastsRecord
                                                                .recipients
                                                                .contains(
                                                                    listViewOUserRecord
                                                                        .reference),
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkboxValueMap[
                                                                      listViewOUserRecord] =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            await widget
                                                                .broadcastID!
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'recipients':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    listViewOUserRecord
                                                                        .reference
                                                                  ]),
                                                                },
                                                              ),
                                                            });
                                                            _model.selectNum =
                                                                _model.selectNum +
                                                                    1;
                                                            _model.addToAddedPeaple(
                                                                listViewOUserRecord
                                                                    .reference);
                                                            safeSetState(() {});
                                                            await actions
                                                                .debugPrint(
                                                              _model.selectNum
                                                                  .toString(),
                                                            );
                                                          } else {
                                                            await widget
                                                                .broadcastID!
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'recipients':
                                                                      FieldValue
                                                                          .arrayRemove([
                                                                    listViewOUserRecord
                                                                        .reference
                                                                  ]),
                                                                },
                                                              ),
                                                            });
                                                            _model.selectNum =
                                                                _model.selectNum +
                                                                    -1;
                                                            _model.addedPeaple = functions
                                                                .getOtherUserRefs(
                                                                    _model
                                                                        .addedPeaple
                                                                        .toList(),
                                                                    listViewOUserRecord
                                                                        .reference)!
                                                                .toList()
                                                                .cast<
                                                                    DocumentReference>();
                                                            safeSetState(() {});
                                                            await actions
                                                                .debugPrint(
                                                              _model.selectNum
                                                                  .toString(),
                                                            );
                                                          }
                                                        },
                                                        side: (FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate !=
                                                                null)
                                                            ? BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                              )
                                                            : null,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
