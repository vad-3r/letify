import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/landlord_pages/contracts/contract_builder/end_date_error/end_date_error_widget.dart';
import '/landlord_pages/contracts/contract_builder/start_date_error/start_date_error_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'contract_builder_model.dart';
export 'contract_builder_model.dart';

class ContractBuilderWidget extends StatefulWidget {
  const ContractBuilderWidget({super.key});

  static String routeName = 'Contract_Builder';
  static String routePath = '/contractBuilder';

  @override
  State<ContractBuilderWidget> createState() => _ContractBuilderWidgetState();
}

class _ContractBuilderWidgetState extends State<ContractBuilderWidget>
    with TickerProviderStateMixin {
  late ContractBuilderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContractBuilderModel());

    _model.lessorNameTextController1 ??= TextEditingController();
    _model.lessorNameFocusNode1 ??= FocusNode();
    _model.lessorNameFocusNode1!.addListener(() => safeSetState(() {}));
    _model.lessorNameTextController2 ??= TextEditingController();
    _model.lessorNameFocusNode2 ??= FocusNode();
    _model.lessorNameFocusNode2!.addListener(() => safeSetState(() {}));
    _model.lessorIDTextController ??= TextEditingController();
    _model.lessorIDFocusNode ??= FocusNode();
    _model.lessorIDFocusNode!.addListener(() => safeSetState(() {}));
    _model.lessorStreetAddressTextController ??= TextEditingController();
    _model.lessorStreetAddressFocusNode ??= FocusNode();
    _model.lessorStreetAddressFocusNode!.addListener(() => safeSetState(() {}));
    _model.lessorSuburbTextController ??= TextEditingController();
    _model.lessorSuburbFocusNode ??= FocusNode();
    _model.lessorSuburbFocusNode!.addListener(() => safeSetState(() {}));
    _model.lessorCityTextController ??= TextEditingController();
    _model.lessorCityFocusNode ??= FocusNode();
    _model.lessorCityFocusNode!.addListener(() => safeSetState(() {}));
    _model.lessorPostalCodeTextController ??= TextEditingController();
    _model.lessorPostalCodeFocusNode ??= FocusNode();
    _model.lessorPostalCodeFocusNode!.addListener(() => safeSetState(() {}));
    _model.lessorEmailTextController ??= TextEditingController();
    _model.lessorEmailFocusNode ??= FocusNode();
    _model.lessorEmailFocusNode!.addListener(() => safeSetState(() {}));
    _model.telPhoneTextController ??= TextEditingController();
    _model.telPhoneFocusNode ??= FocusNode();
    _model.telPhoneFocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen1TextController ??= TextEditingController();
    _model.topTen1FocusNode ??= FocusNode();
    _model.topTen1FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen2TextController ??= TextEditingController();
    _model.topTen2FocusNode ??= FocusNode();
    _model.topTen2FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen3TextController ??= TextEditingController();
    _model.topTen3FocusNode ??= FocusNode();
    _model.topTen3FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen4TextController ??= TextEditingController();
    _model.topTen4FocusNode ??= FocusNode();
    _model.topTen4FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen5TextController ??= TextEditingController();
    _model.topTen5FocusNode ??= FocusNode();
    _model.topTen5FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen6TextController ??= TextEditingController();
    _model.topTen6FocusNode ??= FocusNode();
    _model.topTen6FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen7TextController ??= TextEditingController();
    _model.topTen7FocusNode ??= FocusNode();
    _model.topTen7FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen8TextController ??= TextEditingController();
    _model.topTen8FocusNode ??= FocusNode();
    _model.topTen8FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen9TextController ??= TextEditingController();
    _model.topTen9FocusNode ??= FocusNode();
    _model.topTen9FocusNode!.addListener(() => safeSetState(() {}));
    _model.topTen10TextController ??= TextEditingController();
    _model.topTen10FocusNode ??= FocusNode();
    _model.topTen10FocusNode!.addListener(() => safeSetState(() {}));
    _model.lesseeNameTextController ??= TextEditingController();
    _model.lesseeNameFocusNode ??= FocusNode();
    _model.lesseeNameFocusNode!.addListener(() => safeSetState(() {}));
    _model.lesseeIDTextController ??= TextEditingController();
    _model.lesseeIDFocusNode ??= FocusNode();
    _model.lesseeIDFocusNode!.addListener(() => safeSetState(() {}));
    _model.lesseeEmailTextController ??= TextEditingController();
    _model.lesseeEmailFocusNode ??= FocusNode();
    _model.lesseeEmailFocusNode!.addListener(() => safeSetState(() {}));
    _model.lesseeStreetTextController ??= TextEditingController();
    _model.lesseeStreetFocusNode ??= FocusNode();
    _model.lesseeStreetFocusNode!.addListener(() => safeSetState(() {}));
    _model.lesseeSuburbTextController ??= TextEditingController();
    _model.lesseeSuburbFocusNode ??= FocusNode();
    _model.lesseeSuburbFocusNode!.addListener(() => safeSetState(() {}));
    _model.lesseeCityTextController ??= TextEditingController();
    _model.lesseeCityFocusNode ??= FocusNode();
    _model.lesseeCityFocusNode!.addListener(() => safeSetState(() {}));
    _model.lesseePostalTextController1 ??= TextEditingController();
    _model.lesseePostalFocusNode1 ??= FocusNode();
    _model.lesseePostalFocusNode1!.addListener(() => safeSetState(() {}));
    _model.lesseePostalTextController2 ??= TextEditingController();
    _model.lesseePostalFocusNode2 ??= FocusNode();
    _model.lesseePostalFocusNode2!.addListener(() => safeSetState(() {}));
    _model.customRoomTypeTextController ??= TextEditingController();
    _model.customRoomTypeFocusNode ??= FocusNode();
    _model.customRoomTypeFocusNode!.addListener(() => safeSetState(() {}));
    _model.rentTextController1 ??= TextEditingController();
    _model.rentFocusNode1 ??= FocusNode();
    _model.rentFocusNode1!.addListener(() => safeSetState(() {}));
    _model.rentTextController2 ??= TextEditingController();
    _model.rentFocusNode2 ??= FocusNode();
    _model.rentFocusNode2!.addListener(() => safeSetState(() {}));
    _model.rentTextController3 ??= TextEditingController();
    _model.rentFocusNode3 ??= FocusNode();
    _model.rentFocusNode3!.addListener(() => safeSetState(() {}));
    _model.rentTextController4 ??= TextEditingController();
    _model.rentFocusNode4 ??= FocusNode();
    _model.rentFocusNode4!.addListener(() => safeSetState(() {}));
    _model.rentTextController5 ??= TextEditingController();
    _model.rentFocusNode5 ??= FocusNode();
    _model.rentFocusNode5!.addListener(() => safeSetState(() {}));
    _model.textController34 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(() => safeSetState(() {}));
    _model.textController35 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(() => safeSetState(() {}));
    _model.textController36 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
    _model.textFieldFocusNode3!.addListener(() => safeSetState(() {}));
    _model.textController37 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
    _model.textFieldFocusNode4!.addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 900.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
    context.watch<FFAppState>();

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
              context.pushNamed(ContractManagerWidget.routeName);
            },
          ),
          title: Text(
            'Contract Builder',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Welcome to the Letify Contract Builder',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 26.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleLargeIsCustom,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation']!),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Form(
                    key: _model.formKey5,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Lessor Information',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Text(
                                  'Input bellow the information that will be on the contract',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.lessorNameTextController1,
                                    focusNode: _model.lessorNameFocusNode1,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Name for the contract',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    validator: _model
                                        .lessorNameTextController1Validator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization.words),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.lessorNameTextController2,
                                    focusNode: _model.lessorNameFocusNode2,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          'Name (This is the name displayed on contract header)',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    validator: _model
                                        .lessorNameTextController2Validator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization.words),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.lessorIDTextController,
                                    focusNode: _model.lessorIDFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'ID Number or Company Number',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    validator: _model
                                        .lessorIDTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model
                                        .lessorStreetAddressTextController,
                                    focusNode:
                                        _model.lessorStreetAddressFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Street Address',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    keyboardType: TextInputType.streetAddress,
                                    validator: _model
                                        .lessorStreetAddressTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.lessorSuburbTextController,
                                    focusNode: _model.lessorSuburbFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Suburb',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    validator: _model
                                        .lessorSuburbTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.lessorCityTextController,
                                    focusNode: _model.lessorCityFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'City',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    validator: _model
                                        .lessorCityTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.lessorPostalCodeTextController,
                                    focusNode: _model.lessorPostalCodeFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Postal Code',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .lessorPostalCodeTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        _model.lessorEmailTextController,
                                    focusNode: _model.lessorEmailFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'E-Mail',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .lessorEmailTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.telPhoneTextController,
                                    focusNode: _model.telPhoneFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Telephone',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    keyboardType: TextInputType.phone,
                                    validator: _model
                                        .telPhoneTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation1']!),
                  ),
                ),
                Flexible(
                  child: Form(
                    key: _model.formKey8,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Top Ten ',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Text(
                                  'Input bellow the the top ten most important points you want emphasized on your contract',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen1TextController,
                                    focusNode: _model.topTen1FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '1.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen1TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen2TextController,
                                    focusNode: _model.topTen2FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '2.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen2TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen3TextController,
                                    focusNode: _model.topTen3FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '3.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen3TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen4TextController,
                                    focusNode: _model.topTen4FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '4.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen4TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen5TextController,
                                    focusNode: _model.topTen5FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '5.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen5TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen6TextController,
                                    focusNode: _model.topTen6FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '6.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen6TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen7TextController,
                                    focusNode: _model.topTen7FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '7.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen7TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen8TextController,
                                    focusNode: _model.topTen8FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '8.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen8TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen9TextController,
                                    focusNode: _model.topTen9FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '9.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen9TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.topTen10TextController,
                                    focusNode: _model.topTen10FocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: '10.',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    maxLines: null,
                                    validator: _model
                                        .topTen10TextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization
                                                        .sentences),
                                          );
                                        }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var contractBuilderRecordReference =
                                  ContractBuilderRecord.collection.doc();
                              await contractBuilderRecordReference
                                  .set(createContractBuilderRecordData(
                                contractName:
                                    _model.lessorNameTextController1.text,
                              ));
                              _model.contracting =
                                  ContractBuilderRecord.getDocumentFromData(
                                      createContractBuilderRecordData(
                                        contractName: _model
                                            .lessorNameTextController1.text,
                                      ),
                                      contractBuilderRecordReference);

                              context.pushNamed(
                                CustomContractBuilderWidget.routeName,
                                queryParameters: {
                                  'contractBuilderId': serializeParam(
                                    _model.contracting?.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );

                              safeSetState(() {});
                            },
                            text: 'Contract Creator',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
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
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation2']!),
                  ),
                ),
                Flexible(
                  child: Form(
                    key: _model.formKey3,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Room Type',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Text(
                                  'What type of room is this contract for?',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Text(
                                    'Please select the room type',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: [
                                    'Single',
                                    'Sharing',
                                    'Bachelor',
                                    'Flat',
                                    'Town House',
                                    'Commercial',
                                    'Other'
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  hintText: 'Room Type',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 1.0,
                                  borderRadius: 16.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.lesseeNameTextController,
                                      focusNode: _model.lesseeNameFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(_model
                                            .lesseeNameTextController.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseeNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.lesseeIDTextController,
                                      focusNode: _model.lesseeIDFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(
                                            _model.lesseeIDTextController.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseeIDTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.lesseeEmailTextController,
                                      focusNode: _model.lesseeEmailFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(_model
                                            .lesseeEmailTextController.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseeEmailTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.lesseeStreetTextController,
                                      focusNode: _model.lesseeStreetFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(_model
                                            .lesseeStreetTextController.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseeStreetTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.lesseeSuburbTextController,
                                      focusNode: _model.lesseeSuburbFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(_model
                                            .lesseeSuburbTextController.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseeSuburbTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.lesseeCityTextController,
                                      focusNode: _model.lesseeCityFocusNode,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(_model
                                            .lesseeCityTextController.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseeCityTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.lesseePostalTextController1,
                                      focusNode: _model.lesseePostalFocusNode1,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(_model
                                            .lesseePostalTextController1.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseePostalTextController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.lesseePostalTextController2,
                                      focusNode: _model.lesseePostalFocusNode2,
                                      onFieldSubmitted: (_) async {
                                        _model.addToListTopTen(_model
                                            .lesseePostalTextController2.text);
                                        safeSetState(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Room Type',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .lesseePostalTextController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.dropDownValue == 'Other')
                                Flexible(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.customRoomTypeTextController,
                                      focusNode: _model.customRoomTypeFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Specify...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .customRoomTypeTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        if (!isAndroid && !isiOS)
                                          TextInputFormatter.withFunction(
                                              (oldValue, newValue) {
                                            return TextEditingValue(
                                              selection: newValue.selection,
                                              text: newValue.text
                                                  .toCapitalization(
                                                      TextCapitalization
                                                          .sentences),
                                            );
                                          }),
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textFieldOnPageLoadAnimation']!),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation3']!),
                  ),
                ),
                Flexible(
                  child: Form(
                    key: _model.formKey1,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Contract Duration & Fees',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Text(
                                  'Select the duration of your contract below.',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Start Date',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final _datePicked1Date =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2050),
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLargeFamily,
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLargeIsCustom,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );

                                      if (_datePicked1Date != null) {
                                        safeSetState(() {
                                          _model.datePicked1 = DateTime(
                                            _datePicked1Date.year,
                                            _datePicked1Date.month,
                                            _datePicked1Date.day,
                                          );
                                        });
                                      } else if (_model.datePicked1 != null) {
                                        safeSetState(() {
                                          _model.datePicked1 =
                                              getCurrentTimestamp;
                                        });
                                      }
                                      FFAppState().startDate =
                                          _model.datePicked1;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 130.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                () {
                                                  if (_model.datePicked1 ==
                                                      null) {
                                                    return 'Start';
                                                  } else if (_model
                                                          .datePicked1 !=
                                                      null) {
                                                    return dateTimeFormat(
                                                      "yMMMd",
                                                      _model.datePicked1,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    );
                                                  } else {
                                                    return '';
                                                  }
                                                }(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'End Date',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final _datePicked2Date =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2050),
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLargeFamily,
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLargeIsCustom,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );

                                      if (_datePicked2Date != null) {
                                        safeSetState(() {
                                          _model.datePicked2 = DateTime(
                                            _datePicked2Date.year,
                                            _datePicked2Date.month,
                                            _datePicked2Date.day,
                                          );
                                        });
                                      } else if (_model.datePicked2 != null) {
                                        safeSetState(() {
                                          _model.datePicked2 =
                                              getCurrentTimestamp;
                                        });
                                      }
                                      FFAppState().endDate = _model.datePicked2;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 130.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                () {
                                                  if (_model.datePicked2 ==
                                                      null) {
                                                    return 'End';
                                                  } else if (_model
                                                          .datePicked2 !=
                                                      null) {
                                                    return dateTimeFormat(
                                                      "yMMMd",
                                                      _model.datePicked2,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    );
                                                  } else {
                                                    return '';
                                                  }
                                                }(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Text(
                                  'Enter the fees associated with the contract.',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Monthly Rent Amount',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.rentTextController1,
                                      focusNode: _model.rentFocusNode1,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.rentTextController1',
                                        Duration(milliseconds: 200),
                                        () async {
                                          FFAppState().montlyRent =
                                              double.parse(_model
                                                  .rentTextController1.text);
                                          FFAppState().totalRent =
                                              functions.calculateTotalRent(
                                                  FFAppState().startDate!,
                                                  FFAppState().endDate!,
                                                  FFAppState()
                                                      .montlyRent
                                                      .toString())!;
                                          safeSetState(() {});
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Rent',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .rentTextController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Admin Fee',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.rentTextController2,
                                      focusNode: _model.rentFocusNode2,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.rentTextController2',
                                        Duration(milliseconds: 200),
                                        () async {
                                          FFAppState().montlyRent =
                                              double.parse(_model
                                                  .rentTextController2.text);
                                          FFAppState().totalRent =
                                              functions.calculateTotalRent(
                                                  FFAppState().startDate!,
                                                  FFAppState().endDate!,
                                                  FFAppState()
                                                      .montlyRent
                                                      .toString())!;
                                          safeSetState(() {});
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Admin Fee',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .rentTextController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Deposit',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.rentTextController3,
                                      focusNode: _model.rentFocusNode3,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.rentTextController3',
                                        Duration(milliseconds: 200),
                                        () async {
                                          FFAppState().montlyRent =
                                              double.parse(_model
                                                  .rentTextController3.text);
                                          FFAppState().totalRent =
                                              functions.calculateTotalRent(
                                                  FFAppState().startDate!,
                                                  FFAppState().endDate!,
                                                  FFAppState()
                                                      .montlyRent
                                                      .toString())!;
                                          safeSetState(() {});
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Deposit',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .rentTextController3Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Key Deposit',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.rentTextController4,
                                      focusNode: _model.rentFocusNode4,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.rentTextController4',
                                        Duration(milliseconds: 200),
                                        () async {
                                          FFAppState().montlyRent =
                                              double.parse(_model
                                                  .rentTextController4.text);
                                          FFAppState().totalRent =
                                              functions.calculateTotalRent(
                                                  FFAppState().startDate!,
                                                  FFAppState().endDate!,
                                                  FFAppState()
                                                      .montlyRent
                                                      .toString())!;
                                          safeSetState(() {});
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Key Deposit',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .rentTextController4Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 16.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Refundable',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.rentTextController5,
                                      focusNode: _model.rentFocusNode5,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.rentTextController5',
                                        Duration(milliseconds: 200),
                                        () async {
                                          FFAppState().montlyRent =
                                              double.parse(_model
                                                  .rentTextController5.text);
                                          FFAppState().totalRent =
                                              functions.calculateTotalRent(
                                                  FFAppState().startDate!,
                                                  FFAppState().endDate!,
                                                  FFAppState()
                                                      .montlyRent
                                                      .toString())!;
                                          safeSetState(() {});
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Refundable',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .rentTextController5Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation4']!),
                  ),
                ),
                Form(
                  key: _model.formKey2,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 24.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Electricity',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 20.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                'Input below the rules regarding Electricity that you want imposed in your property',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 16.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.textController34,
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: true,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Electricity Rules',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
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
                                  maxLines: null,
                                  validator: _model.textController34Validator
                                      .asValidator(context),
                                  inputFormatters: [
                                    if (!isAndroid && !isiOS)
                                      TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                        return TextEditingValue(
                                          selection: newValue.selection,
                                          text: newValue.text.toCapitalization(
                                              TextCapitalization.sentences),
                                        );
                                      }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation5']!),
                ),
                Form(
                  key: _model.formKey4,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 24.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Water',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 20.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                'Input below the rules regarding Water that you want imposed in your property',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 16.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.textController35,
                                  focusNode: _model.textFieldFocusNode2,
                                  autofocus: true,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Water Rules',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
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
                                  maxLines: null,
                                  validator: _model.textController35Validator
                                      .asValidator(context),
                                  inputFormatters: [
                                    if (!isAndroid && !isiOS)
                                      TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                        return TextEditingValue(
                                          selection: newValue.selection,
                                          text: newValue.text.toCapitalization(
                                              TextCapitalization.sentences),
                                        );
                                      }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation6']!),
                ),
                Form(
                  key: _model.formKey7,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 24.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Geyser',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 20.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                'Input below the rules regarding Geyser that you want imposed in your property',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 16.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.textController36,
                                  focusNode: _model.textFieldFocusNode3,
                                  autofocus: true,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Geyser Rules',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
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
                                  maxLines: null,
                                  validator: _model.textController36Validator
                                      .asValidator(context),
                                  inputFormatters: [
                                    if (!isAndroid && !isiOS)
                                      TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                        return TextEditingValue(
                                          selection: newValue.selection,
                                          text: newValue.text.toCapitalization(
                                              TextCapitalization.sentences),
                                        );
                                      }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation7']!),
                ),
                Form(
                  key: _model.formKey6,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 24.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'House Rules',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 20.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                'Input below the House Rules that you want imposed in your property',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 16.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.textController37,
                                  focusNode: _model.textFieldFocusNode4,
                                  autofocus: true,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'House Rules',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
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
                                  maxLines: null,
                                  validator: _model.textController37Validator
                                      .asValidator(context),
                                  inputFormatters: [
                                    if (!isAndroid && !isiOS)
                                      TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                        return TextEditingValue(
                                          selection: newValue.selection,
                                          text: newValue.text.toCapitalization(
                                              TextCapitalization.sentences),
                                        );
                                      }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation8']!),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Lessor Signature',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Text(
                                  'For your signature, do you wish to upload an image or create one? Select option bellow',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.signatureChoiceValueController ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    'Upload Signature',
                                    'Create Signature'
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.signatureChoiceValue = val),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  hintText: 'Signature',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 1.0,
                                  borderRadius: 16.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 20.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.signatureChoiceValue ==
                                  'Create Signature')
                                Flexible(
                                  child: Text(
                                    'Use your finger or mouse to caputure signature below',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                  ),
                                ),
                              if (_model.signatureChoiceValue ==
                                  'Upload Signature')
                                Flexible(
                                  child: Text(
                                    'Upload an image of your signature ',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation10']!),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.signatureChoiceValue ==
                                  'Create Signature')
                                ClipRect(
                                  child: Signature(
                                    controller:
                                        _model.lessorSignatureController ??=
                                            SignatureController(
                                      penStrokeWidth: 1.0,
                                      penColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      exportBackgroundColor: Colors.white,
                                    ),
                                    backgroundColor: Color(0xFFF6F6F6),
                                    width: 350.0,
                                    height: 120.0,
                                  ),
                                ),
                              if (_model.signatureChoiceValue ==
                                  'Upload Signature')
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      // uploadSignature
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        safeSetState(() => _model
                                                .isDataUploading_primarySignature1 =
                                            true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                  ))
                                              .toList();

                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          _model.isDataUploading_primarySignature1 =
                                              false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile_primarySignature1 =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl_primarySignature1 =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }
                                    },
                                    text: _model.uploadedFileUrl_primarySignature1 !=
                                                ''
                                        ? 'Uploaded'
                                        : 'Primary Signature',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          if (_model.signatureChoiceValue == 'Create Signature')
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    safeSetState(() {
                                      _model.lessorSignatureController?.clear();
                                    });
                                  },
                                  text: 'Clear Signature',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Upload signatures to add to your contract (Witnesses)',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleLargeIsCustom,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Text(
                              'Use buttons below to upload (optional)',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    maxWidth: 300.00,
                                    maxHeight: 300.00,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(() => _model
                                        .isDataUploading_signature1Url = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading_signature1Url =
                                          false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile_signature1Url =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl_signature1Url =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }
                                },
                                text: _model.uploadedFileUrl_signature1Url !=
                                            ''
                                    ? 'Uploaded'
                                    : 'Witness 1',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
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
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    maxWidth: 300.00,
                                    maxHeight: 300.00,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(() => _model
                                        .isDataUploading_signature2Url = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading_signature2Url =
                                          false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile_signature2Url =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl_signature2Url =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }
                                },
                                text: _model.uploadedFileUrl_signature2Url !=
                                            ''
                                    ? 'Uploaded'
                                    : 'Witness 2',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
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
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation9']!),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.signatureChoiceValue !=
                                'Upload Signature') {
                              final signatureImage = await _model
                                  .lessorSignatureController!
                                  .toPngBytes(height: 120, width: 350);
                              if (signatureImage == null) {
                                showUploadMessage(
                                  context,
                                  'Signature is empty.',
                                );
                                return;
                              }
                              showUploadMessage(
                                context,
                                'Uploading signature...',
                                showLoading: true,
                              );
                              final downloadUrl = (await uploadData(
                                  getSignatureStoragePath(), signatureImage));

                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrl != null) {
                                safeSetState(() =>
                                    _model.uploadedSignatureUrl = downloadUrl);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload signature.',
                                );
                                return;
                              }
                            }
                            if (_model.formKey8.currentState == null ||
                                !_model.formKey8.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey5.currentState == null ||
                                !_model.formKey5.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey1.currentState == null ||
                                !_model.formKey1.currentState!.validate()) {
                              return;
                            }
                            if (_model.datePicked1 == null) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: StartDateErrorWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));

                              return;
                            }
                            if (_model.datePicked2 == null) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: EndDateErrorWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));

                              return;
                            }
                            if (_model.formKey2.currentState == null ||
                                !_model.formKey2.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey3.currentState == null ||
                                !_model.formKey3.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey4.currentState == null ||
                                !_model.formKey4.currentState!.validate()) {
                              return;
                            }
                            if (_model.uploadedSignatureUrl == '') {
                              var contractRecordReference1 =
                                  ContractRecord.collection.doc();
                              await contractRecordReference1
                                  .set(createContractRecordData(
                                lessorName:
                                    _model.lessorNameTextController1.text,
                                idNum: _model.lessorIDTextController.text,
                                streetAddress: _model
                                    .lessorStreetAddressTextController.text,
                                suburb: _model.lessorSuburbTextController.text,
                                city: _model.lessorCityTextController.text,
                                postalCode:
                                    _model.lessorPostalCodeTextController.text,
                                eMail: _model.lessorEmailTextController.text,
                                telPhone: '',
                                startDate: _model.datePicked1,
                                endDate: _model.datePicked2,
                                montlyRent: double.tryParse(
                                    _model.rentTextController1.text),
                                electricityRules: _model.textController34.text,
                                waterRules: _model.textController35.text,
                                lessorSignature:
                                    _model.uploadedFileUrl_primarySignature1,
                                landlordId: currentUserReference,
                                signatureimagepath:
                                    _model.uploadedFileUrl_primarySignature1,
                                roomType: _model.dropDownValue,
                                topTen1: _model.topTen1TextController.text,
                                topTen2: _model.topTen2TextController.text,
                                topTen3: _model.topTen3TextController.text,
                                topTen4: _model.topTen4TextController.text,
                                topTen5: _model.topTen5TextController.text,
                                topTen6: _model.topTen6TextController.text,
                                topTen7: _model.topTen7TextController.text,
                                topTen8: _model.topTen8TextController.text,
                                topTen9: _model.topTen9TextController.text,
                                topTen10: _model.topTen10TextController.text,
                                contractId: random_data.randomString(
                                  12,
                                  12,
                                  true,
                                  true,
                                  true,
                                ),
                                signature1Url: _model.uploadedFileUrl_signature1Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature1Url
                                    : '',
                                signature2Url: _model.uploadedFileUrl_signature1Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature2Url
                                    : '',
                                adminFee: double.tryParse(
                                    _model.rentTextController2.text),
                                refundableFee: double.tryParse(
                                    _model.rentTextController5.text),
                                keyDeposit: double.tryParse(
                                    _model.rentTextController4.text),
                                deposit: double.tryParse(
                                    _model.rentTextController3.text),
                                customRoomType:
                                    _model.customRoomTypeTextController.text,
                                contractName:
                                    _model.lessorNameTextController1.text,
                                witness1Image: _model.uploadedFileUrl_signature1Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature1Url
                                    : '',
                                witness2Image: _model.uploadedFileUrl_signature2Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature2Url
                                    : '',
                                geyserRules: _model.textController36.text,
                                houseRules: _model.textController37.text,
                              ));
                              _model.onCreateContract1 =
                                  ContractRecord.getDocumentFromData(
                                      createContractRecordData(
                                        lessorName: _model
                                            .lessorNameTextController1.text,
                                        idNum:
                                            _model.lessorIDTextController.text,
                                        streetAddress: _model
                                            .lessorStreetAddressTextController
                                            .text,
                                        suburb: _model
                                            .lessorSuburbTextController.text,
                                        city: _model
                                            .lessorCityTextController.text,
                                        postalCode: _model
                                            .lessorPostalCodeTextController
                                            .text,
                                        eMail: _model
                                            .lessorEmailTextController.text,
                                        telPhone: '',
                                        startDate: _model.datePicked1,
                                        endDate: _model.datePicked2,
                                        montlyRent: double.tryParse(
                                            _model.rentTextController1.text),
                                        electricityRules:
                                            _model.textController34.text,
                                        waterRules:
                                            _model.textController35.text,
                                        lessorSignature: _model
                                            .uploadedFileUrl_primarySignature1,
                                        landlordId: currentUserReference,
                                        signatureimagepath: _model
                                            .uploadedFileUrl_primarySignature1,
                                        roomType: _model.dropDownValue,
                                        topTen1:
                                            _model.topTen1TextController.text,
                                        topTen2:
                                            _model.topTen2TextController.text,
                                        topTen3:
                                            _model.topTen3TextController.text,
                                        topTen4:
                                            _model.topTen4TextController.text,
                                        topTen5:
                                            _model.topTen5TextController.text,
                                        topTen6:
                                            _model.topTen6TextController.text,
                                        topTen7:
                                            _model.topTen7TextController.text,
                                        topTen8:
                                            _model.topTen8TextController.text,
                                        topTen9:
                                            _model.topTen9TextController.text,
                                        topTen10:
                                            _model.topTen10TextController.text,
                                        contractId: random_data.randomString(
                                          12,
                                          12,
                                          true,
                                          true,
                                          true,
                                        ),
                                        signature1Url:
                                            _model.uploadedFileUrl_signature1Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature1Url
                                                : '',
                                        signature2Url:
                                            _model.uploadedFileUrl_signature1Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature2Url
                                                : '',
                                        adminFee: double.tryParse(
                                            _model.rentTextController2.text),
                                        refundableFee: double.tryParse(
                                            _model.rentTextController5.text),
                                        keyDeposit: double.tryParse(
                                            _model.rentTextController4.text),
                                        deposit: double.tryParse(
                                            _model.rentTextController3.text),
                                        customRoomType: _model
                                            .customRoomTypeTextController.text,
                                        contractName: _model
                                            .lessorNameTextController1.text,
                                        witness1Image:
                                            _model.uploadedFileUrl_signature1Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature1Url
                                                : '',
                                        witness2Image:
                                            _model.uploadedFileUrl_signature2Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature2Url
                                                : '',
                                        geyserRules:
                                            _model.textController36.text,
                                        houseRules:
                                            _model.textController37.text,
                                      ),
                                      contractRecordReference1);
                              await actions.generateContractPDF(
                                _model.lessorNameTextController1.text,
                                _model.lessorIDTextController.text,
                                _model.lessorStreetAddressTextController.text,
                                _model.lessorSuburbTextController.text,
                                _model.lessorCityTextController.text,
                                _model.lessorPostalCodeTextController.text,
                                _model.lessorEmailTextController.text,
                                _model.telPhoneTextController.text,
                                _model.lesseeNameTextController.text,
                                _model.lesseeIDTextController.text,
                                _model.lesseeStreetTextController.text,
                                _model.lesseeSuburbTextController.text,
                                _model.lesseeCityTextController.text,
                                _model.lesseePostalTextController1.text,
                                _model.lesseeEmailTextController.text,
                                _model.lesseePostalTextController2.text,
                                _model.topTen1TextController.text,
                                _model.topTen2TextController.text,
                                _model.topTen3TextController.text,
                                _model.topTen4TextController.text,
                                _model.topTen5TextController.text,
                                _model.topTen6TextController.text,
                                _model.topTen7TextController.text,
                                _model.topTen8TextController.text,
                                _model.topTen9TextController.text,
                                _model.topTen10TextController.text,
                                _model.onCreateContract1!.reference.id,
                                _model.datePicked1!,
                                _model.datePicked2!,
                                double.parse(_model.rentTextController1.text),
                                _model.textController34.text,
                                _model.textController35.text,
                                _model.textController36.text,
                                _model.textController37.text,
                                _model.onCreateContract1!.roomType,
                                _model.onCreateContract1!.adminFee,
                                _model.onCreateContract1!.refundableFee,
                                double.parse(_model.rentTextController3.text),
                                double.parse(_model.rentTextController4.text),
                                _model.customRoomTypeTextController.text,
                                _model.uploadedFileUrl_primarySignature1,
                                _model.uploadedFileUrl_signature1Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature1Url
                                    : '',
                                _model.uploadedFileUrl_signature2Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature2Url
                                    : '',
                                FFAppConstants.logoLetify,
                                FFAppConstants.llwelynStamp,
                                _model.onCreateContract1!.lessorInitials,
                              );
                            } else {
                              var contractRecordReference2 =
                                  ContractRecord.collection.doc();
                              await contractRecordReference2
                                  .set(createContractRecordData(
                                lessorName:
                                    _model.lessorNameTextController1.text,
                                idNum: _model.lessorIDTextController.text,
                                streetAddress: _model
                                    .lessorStreetAddressTextController.text,
                                suburb: _model.lessorSuburbTextController.text,
                                city: _model.lessorCityTextController.text,
                                postalCode:
                                    _model.lessorPostalCodeTextController.text,
                                eMail: _model.lessorEmailTextController.text,
                                telPhone: '',
                                startDate: _model.datePicked1,
                                endDate: _model.datePicked2,
                                montlyRent: double.tryParse(
                                    _model.rentTextController1.text),
                                electricityRules: _model.textController34.text,
                                waterRules: _model.textController35.text,
                                lessorSignature: _model.uploadedSignatureUrl,
                                landlordId: currentUserReference,
                                signatureimagepath: _model.uploadedSignatureUrl,
                                roomType: _model.dropDownValue,
                                topTen1: _model.topTen1TextController.text,
                                topTen2: _model.topTen2TextController.text,
                                topTen3: _model.topTen3TextController.text,
                                topTen4: _model.topTen4TextController.text,
                                topTen5: _model.topTen5TextController.text,
                                topTen6: _model.topTen6TextController.text,
                                topTen7: _model.topTen7TextController.text,
                                topTen8: _model.topTen8TextController.text,
                                topTen9: _model.topTen9TextController.text,
                                topTen10: _model.topTen10TextController.text,
                                contractId: random_data.randomString(
                                  12,
                                  12,
                                  true,
                                  true,
                                  true,
                                ),
                                signature1Url: _model.uploadedFileUrl_signature1Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature1Url
                                    : '',
                                signature2Url: _model.uploadedFileUrl_signature2Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature2Url
                                    : '',
                                adminFee: double.tryParse(
                                    _model.rentTextController2.text),
                                refundableFee: double.tryParse(
                                    _model.rentTextController5.text),
                                keyDeposit: double.tryParse(
                                    _model.rentTextController4.text),
                                deposit: double.tryParse(
                                    _model.rentTextController3.text),
                                customRoomType:
                                    _model.customRoomTypeTextController.text,
                                contractName:
                                    _model.lessorNameTextController1.text,
                                witness1Image: _model.uploadedFileUrl_signature1Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature1Url
                                    : '',
                                witness2Image: _model.uploadedFileUrl_signature2Url !=
                                            ''
                                    ? _model.uploadedFileUrl_signature2Url
                                    : '',
                                geyserRules: _model.textController36.text,
                                houseRules: _model.textController37.text,
                              ));
                              _model.onCreateContract =
                                  ContractRecord.getDocumentFromData(
                                      createContractRecordData(
                                        lessorName: _model
                                            .lessorNameTextController1.text,
                                        idNum:
                                            _model.lessorIDTextController.text,
                                        streetAddress: _model
                                            .lessorStreetAddressTextController
                                            .text,
                                        suburb: _model
                                            .lessorSuburbTextController.text,
                                        city: _model
                                            .lessorCityTextController.text,
                                        postalCode: _model
                                            .lessorPostalCodeTextController
                                            .text,
                                        eMail: _model
                                            .lessorEmailTextController.text,
                                        telPhone: '',
                                        startDate: _model.datePicked1,
                                        endDate: _model.datePicked2,
                                        montlyRent: double.tryParse(
                                            _model.rentTextController1.text),
                                        electricityRules:
                                            _model.textController34.text,
                                        waterRules:
                                            _model.textController35.text,
                                        lessorSignature:
                                            _model.uploadedSignatureUrl,
                                        landlordId: currentUserReference,
                                        signatureimagepath:
                                            _model.uploadedSignatureUrl,
                                        roomType: _model.dropDownValue,
                                        topTen1:
                                            _model.topTen1TextController.text,
                                        topTen2:
                                            _model.topTen2TextController.text,
                                        topTen3:
                                            _model.topTen3TextController.text,
                                        topTen4:
                                            _model.topTen4TextController.text,
                                        topTen5:
                                            _model.topTen5TextController.text,
                                        topTen6:
                                            _model.topTen6TextController.text,
                                        topTen7:
                                            _model.topTen7TextController.text,
                                        topTen8:
                                            _model.topTen8TextController.text,
                                        topTen9:
                                            _model.topTen9TextController.text,
                                        topTen10:
                                            _model.topTen10TextController.text,
                                        contractId: random_data.randomString(
                                          12,
                                          12,
                                          true,
                                          true,
                                          true,
                                        ),
                                        signature1Url:
                                            _model.uploadedFileUrl_signature1Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature1Url
                                                : '',
                                        signature2Url:
                                            _model.uploadedFileUrl_signature2Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature2Url
                                                : '',
                                        adminFee: double.tryParse(
                                            _model.rentTextController2.text),
                                        refundableFee: double.tryParse(
                                            _model.rentTextController5.text),
                                        keyDeposit: double.tryParse(
                                            _model.rentTextController4.text),
                                        deposit: double.tryParse(
                                            _model.rentTextController3.text),
                                        customRoomType: _model
                                            .customRoomTypeTextController.text,
                                        contractName: _model
                                            .lessorNameTextController1.text,
                                        witness1Image:
                                            _model.uploadedFileUrl_signature1Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature1Url
                                                : '',
                                        witness2Image:
                                            _model.uploadedFileUrl_signature2Url !=
                                                        ''
                                                ? _model
                                                    .uploadedFileUrl_signature2Url
                                                : '',
                                        geyserRules:
                                            _model.textController36.text,
                                        houseRules:
                                            _model.textController37.text,
                                      ),
                                      contractRecordReference2);
                              await actions.generateContractPDF(
                                _model.lessorNameTextController1.text,
                                _model.lessorIDTextController.text,
                                _model.lessorStreetAddressTextController.text,
                                _model.lessorSuburbTextController.text,
                                _model.lessorCityTextController.text,
                                _model.lessorPostalCodeTextController.text,
                                _model.lessorEmailTextController.text,
                                _model.telPhoneTextController.text,
                                _model.lesseeNameTextController.text,
                                _model.lesseeIDTextController.text,
                                _model.lesseeStreetTextController.text,
                                _model.lesseeSuburbTextController.text,
                                _model.lesseeCityTextController.text,
                                _model.lesseePostalTextController1.text,
                                _model.lesseeEmailTextController.text,
                                _model.lesseePostalTextController2.text,
                                _model.topTen1TextController.text,
                                _model.topTen2TextController.text,
                                _model.topTen3TextController.text,
                                _model.topTen4TextController.text,
                                _model.topTen5TextController.text,
                                _model.topTen6TextController.text,
                                _model.topTen7TextController.text,
                                _model.topTen8TextController.text,
                                _model.topTen9TextController.text,
                                _model.topTen10TextController.text,
                                _model.onCreateContract!.reference.id,
                                _model.datePicked1!,
                                _model.datePicked2!,
                                double.parse(_model.rentTextController1.text),
                                _model.textController34.text,
                                _model.textController35.text,
                                _model.textController36.text,
                                _model.textController37.text,
                                _model.onCreateContract!.roomType,
                                _model.onCreateContract!.adminFee,
                                _model.onCreateContract!.refundableFee,
                                double.parse(_model.rentTextController3.text),
                                double.parse(_model.rentTextController4.text),
                                _model.customRoomTypeTextController.text,
                                _model.uploadedSignatureUrl,
                                _model.uploadedFileUrl_signature1Url,
                                _model.uploadedFileUrl_signature2Url,
                                FFAppConstants.logoLetify,
                                FFAppConstants.llwelynStamp,
                                _model.onCreateContract!.lessorInitials,
                              );
                            }

                            context.pushNamed(OwnerContractsWidget.routeName);

                            safeSetState(() {});
                          },
                          text: 'Generate',
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
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
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
    );
  }
}
