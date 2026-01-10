import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'properties_for_mulit_house_group_agent_model.dart';
export 'properties_for_mulit_house_group_agent_model.dart';

class PropertiesForMulitHouseGroupAgentWidget extends StatefulWidget {
  const PropertiesForMulitHouseGroupAgentWidget({super.key});

  static String routeName = 'Properties_For_Mulit_House_Group_Agent';
  static String routePath = '/propertiesForMulitHouseGroupAgent';

  @override
  State<PropertiesForMulitHouseGroupAgentWidget> createState() =>
      _PropertiesForMulitHouseGroupAgentWidgetState();
}

class _PropertiesForMulitHouseGroupAgentWidgetState
    extends State<PropertiesForMulitHouseGroupAgentWidget> {
  late PropertiesForMulitHouseGroupAgentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => PropertiesForMulitHouseGroupAgentModel());

    _model.propSearchTextController ??= TextEditingController();
    _model.propSearchFocusNode ??= FocusNode();

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
                GroupCreateWidget.routeName,
                queryParameters: {
                  'reciepients': serializeParam(
                    _model.reciepients,
                    ParamType.DocumentReference,
                    isList: true,
                  ),
                  'propertyLst': serializeParam(
                    _model.propertyList,
                    ParamType.DocumentReference,
                    isList: true,
                  ),
                }.withoutNulls,
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            label: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Text(
                'Next',
                textAlign: TextAlign.center,
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
              context.pushNamed(DashboardLandlordWidget.routeName);
            },
          ),
          title: Text(
            'New Group Chat',
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Search Property...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.propSearchTextController,
                          focusNode: _model.propSearchFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.propSearchTextController',
                            Duration(milliseconds: 2000),
                            () async {
                              if (_model.propSearchTextController.text == '') {
                                _model.emptyText = true;
                                safeSetState(() {});
                                await actions.debugPrint(
                                  _model.emptyText.toString(),
                                );
                              } else {
                                _model.emptyText = false;
                                safeSetState(() {});
                                await actions.debugPrint(
                                  _model.emptyText.toString(),
                                );
                              }
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText: 'Search for Property...',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          minLines: 1,
                          validator: _model.propSearchTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.emptyText == true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) =>
                                  StreamBuilder<List<PropertyRecord>>(
                                stream: queryPropertyRecord(
                                  queryBuilder: (propertyRecord) =>
                                      propertyRecord
                                          .where(
                                            'landlord_id',
                                            isEqualTo: (currentUserDocument
                                                        ?.employer
                                                        .toList() ??
                                                    [])
                                                .firstOrNull,
                                          )
                                          .orderBy('property_name'),
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
                                  List<PropertyRecord>
                                      listViewOPropertyRecordList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewOPropertyRecordList.length,
                                    itemBuilder: (context, listViewOIndex) {
                                      final listViewOPropertyRecord =
                                          listViewOPropertyRecordList[
                                              listViewOIndex];
                                      return Visibility(
                                        visible: listViewOPropertyRecord
                                                .landlordId ==
                                            (currentUserDocument?.employer
                                                        .toList() ??
                                                    [])
                                                .firstOrNull,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 2.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  48.0,
                                                                  0.0),
                                                      child: Column(
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
                                                            listViewOPropertyRecord
                                                                .propertyName,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
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
                                                              .checkboxValueMap1[
                                                          listViewOPropertyRecord] ??= _model
                                                              .propertyList
                                                              .contains(
                                                                  listViewOPropertyRecord
                                                                      .reference) ==
                                                          true,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() => _model
                                                                    .checkboxValueMap1[
                                                                listViewOPropertyRecord] =
                                                            newValue!);
                                                        if (newValue!) {
                                                          _model.intIncrement =
                                                              0;
                                                          safeSetState(() {});
                                                          while (_model
                                                                  .intIncrement! <
                                                              listViewOPropertyRecord
                                                                  .studentInProperty
                                                                  .length) {
                                                            _model.addToReciepients(
                                                                listViewOPropertyRecord
                                                                    .studentInProperty
                                                                    .elementAtOrNull(
                                                                        _model
                                                                            .intIncrement!)!);
                                                            safeSetState(() {});
                                                            _model.intIncrement =
                                                                _model.intIncrement! +
                                                                    1;
                                                            safeSetState(() {});
                                                          }
                                                          _model.selectNum =
                                                              _model.selectNum +
                                                                  1;
                                                          safeSetState(() {});
                                                          _model.addToPropertyList(
                                                              listViewOPropertyRecord
                                                                  .reference);
                                                          safeSetState(() {});
                                                        } else {
                                                          _model.placeHolderList = functions
                                                              .removeRefsMatching(
                                                                  _model
                                                                      .reciepients
                                                                      .toList(),
                                                                  listViewOPropertyRecord
                                                                      .studentInProperty
                                                                      .toList())!
                                                              .toList()
                                                              .cast<
                                                                  DocumentReference>();
                                                          safeSetState(() {});
                                                          _model.reciepients = _model
                                                              .placeHolderList
                                                              .toList()
                                                              .cast<
                                                                  DocumentReference>();
                                                          safeSetState(() {});
                                                          _model.selectNum =
                                                              _model.selectNum +
                                                                  -1;
                                                          safeSetState(() {});
                                                          _model.removeFromPropertyList(
                                                              listViewOPropertyRecord
                                                                  .reference);
                                                          safeSetState(() {});
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
                        if (_model.emptyText == false)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: FutureBuilder<List<PropertyRecord>>(
                              future: PropertyRecord.search(
                                term: _model.propSearchTextController.text,
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
                                List<PropertyRecord>
                                    listViewSPropertyRecordList =
                                    snapshot.data!;
                                // Customize what your widget looks like with no search results.
                                if (snapshot.data!.isEmpty) {
                                  return Container(
                                    height: 100,
                                    child: Center(
                                      child: Text('No results.'),
                                    ),
                                  );
                                }
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewSPropertyRecordList.length,
                                  itemBuilder: (context, listViewSIndex) {
                                    final listViewSPropertyRecord =
                                        listViewSPropertyRecordList[
                                            listViewSIndex];
                                    return Visibility(
                                      visible:
                                          listViewSPropertyRecord.landlordId ==
                                              (currentUserDocument?.employer
                                                          .toList() ??
                                                      [])
                                                  .firstOrNull,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 2.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                HouseGroupCreateWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'propertyID': serializeParam(
                                                    listViewSPropertyRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    48.0,
                                                                    0.0),
                                                        child: Column(
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
                                                              listViewSPropertyRecord
                                                                  .propertyName,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
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
                                                          ],
                                                        ),
                                                      ),
                                                    ),
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
                                                                .checkboxValueMap2[
                                                            listViewSPropertyRecord] ??= _model
                                                                .propertyList
                                                                .contains(
                                                                    listViewSPropertyRecord
                                                                        .reference) ==
                                                            true,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.checkboxValueMap2[
                                                                      listViewSPropertyRecord] =
                                                                  newValue!);
                                                          if (newValue!) {
                                                            _model.intIncrement =
                                                                0;
                                                            safeSetState(() {});
                                                            while (_model
                                                                    .intIncrement! <
                                                                listViewSPropertyRecord
                                                                    .studentInProperty
                                                                    .length) {
                                                              _model.addToReciepients(
                                                                  listViewSPropertyRecord
                                                                      .studentInProperty
                                                                      .elementAtOrNull(
                                                                          _model
                                                                              .intIncrement!)!);
                                                              safeSetState(
                                                                  () {});
                                                              _model.intIncrement =
                                                                  _model.intIncrement! +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model.selectNum =
                                                                _model.selectNum +
                                                                    1;
                                                            safeSetState(() {});
                                                            _model.addToPropertyList(
                                                                listViewSPropertyRecord
                                                                    .reference);
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.placeHolderList = functions
                                                                .removeRefsMatching(
                                                                    _model
                                                                        .reciepients
                                                                        .toList(),
                                                                    listViewSPropertyRecord
                                                                        .studentInProperty
                                                                        .toList())!
                                                                .toList()
                                                                .cast<
                                                                    DocumentReference>();
                                                            safeSetState(() {});
                                                            _model.reciepients = _model
                                                                .placeHolderList
                                                                .toList()
                                                                .cast<
                                                                    DocumentReference>();
                                                            safeSetState(() {});
                                                            _model.selectNum =
                                                                _model.selectNum +
                                                                    -1;
                                                            safeSetState(() {});
                                                            _model.removeFromPropertyList(
                                                                listViewSPropertyRecord
                                                                    .reference);
                                                            safeSetState(() {});
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
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
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
