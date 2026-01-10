import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'create_employee_group_model.dart';
export 'create_employee_group_model.dart';

class CreateEmployeeGroupWidget extends StatefulWidget {
  const CreateEmployeeGroupWidget({super.key});

  static String routeName = 'Create_Employee_Group';
  static String routePath = '/createEmployeeGroup';

  @override
  State<CreateEmployeeGroupWidget> createState() =>
      _CreateEmployeeGroupWidgetState();
}

class _CreateEmployeeGroupWidgetState extends State<CreateEmployeeGroupWidget> {
  late CreateEmployeeGroupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateEmployeeGroupModel());

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
              context.pushNamed(
                GroupCreateEmployeesWidget.routeName,
                queryParameters: {
                  'reciepients': serializeParam(
                    _model.addedPeaple,
                    ParamType.DocumentReference,
                    isList: true,
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
            'Create Group',
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
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      visualDensity:
                                                          VisualDensity.compact,
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
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
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      safeSetState(() => _model
                                                                  .checkboxValueMap[
                                                              listViewOUserRecord] =
                                                          newValue!);
                                                      if (newValue!) {
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
