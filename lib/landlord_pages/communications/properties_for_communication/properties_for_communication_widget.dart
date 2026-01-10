import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'properties_for_communication_model.dart';
export 'properties_for_communication_model.dart';

class PropertiesForCommunicationWidget extends StatefulWidget {
  const PropertiesForCommunicationWidget({super.key});

  static String routeName = 'Properties_For_Communication';
  static String routePath = '/propertiesForCommunication';

  @override
  State<PropertiesForCommunicationWidget> createState() =>
      _PropertiesForCommunicationWidgetState();
}

class _PropertiesForCommunicationWidgetState
    extends State<PropertiesForCommunicationWidget> {
  late PropertiesForCommunicationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertiesForCommunicationModel());

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
            'Tip-Offs',
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
                              _model.tipOff = await queryTipOffsRecordOnce(
                                queryBuilder: (tipOffsRecord) =>
                                    tipOffsRecord.where(
                                  'landlord_id',
                                  isEqualTo: currentUserReference,
                                ),
                              );
                              _model.results = functions
                                  .filterDocsBySearchTipOffs(
                                      _model.tipOff!.toList(),
                                      'property_name',
                                      _model.propSearchTextController.text)
                                  .toList()
                                  .cast<TipOffsRecord>();
                              safeSetState(() {});

                              safeSetState(() {});
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
                        if (_model.propSearchTextController.text == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: StreamBuilder<List<TipOffsRecord>>(
                              stream: queryTipOffsRecord(
                                queryBuilder: (tipOffsRecord) => tipOffsRecord
                                    .where(
                                      'landlord_id',
                                      isEqualTo: currentUserReference,
                                    )
                                    .orderBy('timestamp', descending: true),
                                limit: 50,
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
                                List<TipOffsRecord> listViewOTipOffsRecordList =
                                    snapshot.data!;

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewOTipOffsRecordList.length,
                                  itemBuilder: (context, listViewOIndex) {
                                    final listViewOTipOffsRecord =
                                        listViewOTipOffsRecordList[
                                            listViewOIndex];
                                    return Visibility(
                                      visible:
                                          listViewOTipOffsRecord.landlordId ==
                                              currentUserReference,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 2.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              AnonymousMessageWidget.routeName,
                                              queryParameters: {
                                                'tipOffID': serializeParam(
                                                  listViewOTipOffsRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );

                                            await listViewOTipOffsRecord
                                                .reference
                                                .update(createTipOffsRecordData(
                                              opened: true,
                                            ));
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'From Tenant In: ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      if (listViewOTipOffsRecord
                                                              .opened ==
                                                          false)
                                                        Container(
                                                          width: 12.0,
                                                          height: 12.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        listViewOTipOffsRecord
                                                            .propertyName,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.formatMessageDateTimeDetailed(
                                                              listViewOTipOffsRecord
                                                                  .timestamp!),
                                                          'time',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
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
                                                    ],
                                                  ),
                                                ].divide(SizedBox(height: 2.0)),
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
                        if (_model.propSearchTextController.text != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final tipOffs = _model.results.toList();

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: tipOffs.length,
                                  itemBuilder: (context, tipOffsIndex) {
                                    final tipOffsItem = tipOffs[tipOffsIndex];
                                    return Visibility(
                                      visible: tipOffsItem.landlordId ==
                                          currentUserReference,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 2.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              AnonymousMessageWidget.routeName,
                                              queryParameters: {
                                                'tipOffID': serializeParam(
                                                  tipOffsItem.reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );

                                            await tipOffsItem.reference
                                                .update(createTipOffsRecordData(
                                              opened: true,
                                            ));
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'From Tenant In: ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      if (tipOffsItem.opened ==
                                                          false)
                                                        Container(
                                                          width: 12.0,
                                                          height: 12.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        tipOffsItem
                                                            .propertyName,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions
                                                              .formatMessageDateTimeDetailed(
                                                                  tipOffsItem
                                                                      .timestamp!),
                                                          'time',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
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
                                                    ],
                                                  ),
                                                ].divide(SizedBox(height: 2.0)),
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
