import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'search_for_tenant_model.dart';
export 'search_for_tenant_model.dart';

class SearchForTenantWidget extends StatefulWidget {
  const SearchForTenantWidget({
    super.key,
    required this.propertyID,
    required this.propertyName,
    required this.portfolioID,
    required this.portfolioName,
    required this.roomID,
    required this.propertyStringID,
    required this.roomName,
  });

  final DocumentReference? propertyID;
  final String? propertyName;
  final DocumentReference? portfolioID;
  final String? portfolioName;
  final RoomRecord? roomID;
  final String? propertyStringID;
  final String? roomName;

  static String routeName = 'Search_For_Tenant';
  static String routePath = '/searchForTenant';

  @override
  State<SearchForTenantWidget> createState() => _SearchForTenantWidgetState();
}

class _SearchForTenantWidgetState extends State<SearchForTenantWidget> {
  late SearchForTenantModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchForTenantModel());

    _model.idNumberTextController ??= TextEditingController();
    _model.idNumberFocusNode ??= FocusNode();

    _model.studentNumberTextController ??= TextEditingController();
    _model.studentNumberFocusNode ??= FocusNode();

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
              context.pop();
            },
          ),
          title: Text(
            'Link Tenant',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (_model.choiceChipsValue == 'ID Number')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.idNumberTextController,
                          focusNode: _model.idNumberFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText: 'Search for tenant by ID number...',
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
                          maxLength: 13,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          validator: _model.idNumberTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    if (_model.choiceChipsValue == 'Student Number')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.studentNumberTextController,
                          focusNode: _model.studentNumberFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText:
                                'Search for tenant by  Student Number...',
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
                          validator: _model.studentNumberTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Search By...',
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
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FlutterFlowChoiceChips(
                            options: [
                              ChipData('Student Number'),
                              ChipData('ID Number')
                            ],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              iconColor: FlutterFlowTheme.of(context).info,
                              iconSize: 20.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 20.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 8.0,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: true,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (_model.choiceChipsValue == 'ID Number') {
                                    context.pushNamed(
                                      LinkTenantIDWidget.routeName,
                                      queryParameters: {
                                        'portfolioName': serializeParam(
                                          widget.portfolioName,
                                          ParamType.String,
                                        ),
                                        'portfolioID': serializeParam(
                                          widget.portfolioID,
                                          ParamType.DocumentReference,
                                        ),
                                        'roomID': serializeParam(
                                          widget.roomID,
                                          ParamType.Document,
                                        ),
                                        'iDNumber': serializeParam(
                                          () {
                                            if (_model.choiceChipsValue ==
                                                'ID Number') {
                                              return _model
                                                  .idNumberTextController.text;
                                            } else if (_model
                                                    .choiceChipsValue ==
                                                'Student Number') {
                                              return _model
                                                  .studentNumberTextController
                                                  .text;
                                            } else {
                                              return '';
                                            }
                                          }(),
                                          ParamType.String,
                                        ),
                                        'propertyName': serializeParam(
                                          widget.propertyName,
                                          ParamType.String,
                                        ),
                                        'propertyID': serializeParam(
                                          widget.propertyID,
                                          ParamType.DocumentReference,
                                        ),
                                        'propertyStringID': serializeParam(
                                          widget.propertyStringID,
                                          ParamType.String,
                                        ),
                                        'roomName': serializeParam(
                                          widget.roomName,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'roomID': widget.roomID,
                                      },
                                    );
                                  } else if (_model.choiceChipsValue ==
                                      'Student Number') {
                                    context.pushNamed(
                                      LinkTenantStudentNumWidget.routeName,
                                      queryParameters: {
                                        'portfolioName': serializeParam(
                                          widget.portfolioName,
                                          ParamType.String,
                                        ),
                                        'portfolioID': serializeParam(
                                          widget.portfolioID,
                                          ParamType.DocumentReference,
                                        ),
                                        'roomID': serializeParam(
                                          widget.roomID,
                                          ParamType.Document,
                                        ),
                                        'iDNumber': serializeParam(
                                          () {
                                            if (_model.choiceChipsValue ==
                                                'ID Number') {
                                              return _model
                                                  .idNumberTextController.text;
                                            } else if (_model
                                                    .choiceChipsValue ==
                                                'Student Number') {
                                              return _model
                                                  .studentNumberTextController
                                                  .text;
                                            } else {
                                              return '';
                                            }
                                          }(),
                                          ParamType.String,
                                        ),
                                        'propertyName': serializeParam(
                                          widget.propertyName,
                                          ParamType.String,
                                        ),
                                        'propertyID': serializeParam(
                                          widget.propertyID,
                                          ParamType.DocumentReference,
                                        ),
                                        'propertyStringID': serializeParam(
                                          widget.propertyStringID,
                                          ParamType.String,
                                        ),
                                        'roomName': serializeParam(
                                          widget.roomName,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'roomID': widget.roomID,
                                      },
                                    );
                                  }
                                },
                                text: 'Search',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
