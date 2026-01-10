import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'emergency_model.dart';
export 'emergency_model.dart';

class EmergencyWidget extends StatefulWidget {
  const EmergencyWidget({super.key});

  static String routeName = 'Emergency';
  static String routePath = '/emergency';

  @override
  State<EmergencyWidget> createState() => _EmergencyWidgetState();
}

class _EmergencyWidgetState extends State<EmergencyWidget>
    with TickerProviderStateMixin {
  late EmergencyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmergencyModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
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
            'Emergency',
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 20.0, 6.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Emergency & Essential Contacts',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 28.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleLargeIsCustom,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Electricity (Centlec): ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n051 409 2345\n068 178 0700',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Prepaid Water Meters: \n',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  'koki.mokhoabane@mangaung.co.za',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Fire Brigade:\n',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '051 406 6666\n 051 409 9600',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Emergency Services\n',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: 'General Emergency: ',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '10111 / 112\n',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Ambulance: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '10177\n',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Police: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '051 406 6452 / 082 466 7490',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 16.0, 6.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: ' Mangaung Call Centre:\n',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '080 011 1300\nenquiry@mangaung.co.za',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
