import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/landlord_pages/property_listing/portfolio/agent_linking/agent_communication/f_a_b_options_agent/f_a_b_options_agent_widget.dart';
import '/student_pages/feature_coming_soon/feature_coming_soon_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'employee_dashboard_model.dart';
export 'employee_dashboard_model.dart';

class EmployeeDashboardWidget extends StatefulWidget {
  const EmployeeDashboardWidget({super.key});

  static String routeName = 'Employee_Dashboard';
  static String routePath = '/employeeDashboard';

  @override
  State<EmployeeDashboardWidget> createState() =>
      _EmployeeDashboardWidgetState();
}

class _EmployeeDashboardWidgetState extends State<EmployeeDashboardWidget>
    with TickerProviderStateMixin {
  late EmployeeDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmployeeDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.startPageLocationTimer();
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.propSearchTextController ??= TextEditingController();
    _model.propSearchFocusNode ??= FocusNode();

    animationsMap.addAll({
      'richTextOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
            begin: Offset(0.0, 10.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'richTextOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
            begin: Offset(0.0, 10.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
            begin: Offset(0.0, 10.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
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
        floatingActionButton: Visibility(
          visible: _model.tabBarCurrentIndex == 1,
          child: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return WebViewAware(
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: FABOptionsAgentWidget(),
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.more_vert,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hi ',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displaySmallFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .displaySmallIsCustom,
                              ),
                        ),
                        TextSpan(
                          text: currentUserDisplayName,
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        TextSpan(
                          text: ' !',
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).displaySmallFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .displaySmallIsCustom,
                          ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['richTextOnPageLoadAnimation1']!),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hi ',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 28.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .displaySmallIsCustom,
                                  ),
                            ),
                            TextSpan(
                              text: currentUserDisplayName,
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            TextSpan(
                              text: '!',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displaySmallFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .displaySmallIsCustom,
                              ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['richTextOnPageLoadAnimation2']!),
                    ),
                  ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(ProfileWidget.routeName);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      shape: BoxShape.circle,
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primary,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.person,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ],
            ),
            actions: [],
            centerTitle: false,
            toolbarHeight: 100.0,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(),
                child: Stack(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor:
                                FlutterFlowTheme.of(context).primaryText,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                            unselectedLabelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            tabs: [
                              Tab(
                                text: 'Home',
                              ),
                              Tab(
                                text: 'Messages',
                              ),
                              Tab(
                                text: 'Tenant Activity',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: GridView(
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisSpacing: 50.0,
                                            childAspectRatio: 1.0,
                                          ),
                                          primary: false,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    ContractsAgentsWidget
                                                        .routeName);
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 90.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/Contracts_-_compact.png',
                                                        width: 200.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Contracts',
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation1']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    ContractManagerWidget
                                                        .routeName);
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 90.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/Tenants_Contracts_-_compact.png',
                                                        width: 200.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Tenant Contracts',
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation2']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    PortfolioListAgentsWidget
                                                        .routeName);
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 90.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/Tenants_-_compact.png',
                                                        width: 200.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Tenants',
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation3']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    EmployeeStatsWidget
                                                        .routeName);
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 90.0,
                                                    height: 90.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/Icon_designs___my-house.png',
                                                        width: 200.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'My Stats',
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation4']!),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 300.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 20.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        ContractsAgentsWidget
                                                            .routeName);
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Contracts_-_compact.png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Contracts',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation5']!),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        TenantScreeningListWidget
                                                            .routeName);
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Tenants_Contracts_-_compact.png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Tenant Contracts',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation6']!),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        PortfolioListAgentsWidget
                                                            .routeName);
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Tenants_-_compact.png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Tenants',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation7']!),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        EmployeeStatsWidget
                                                            .routeName);
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Icon_designs___landlord.png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'My Stats',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation8']!),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        EmployeeStatsWidget
                                                            .routeName);
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Icon_designs___fix-it.png',
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Fix-It',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation9']!),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(6.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowChoiceChips(
                                                                  options: [
                                                                    ChipData(
                                                                        'All'),
                                                                    ChipData(
                                                                        'People'),
                                                                    ChipData(
                                                                        'Groups'),
                                                                    ChipData(
                                                                        'Management Groups'),
                                                                    ChipData(
                                                                        'Unread')
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      safeSetState(() =>
                                                                          _model.choiceChipsValue =
                                                                              val?.firstOrNull),
                                                                  selectedChipStyle:
                                                                      ChipStyle(
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                    iconColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .info,
                                                                    iconSize:
                                                                        16.0,
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.0),
                                                                  ),
                                                                  unselectedChipStyle:
                                                                      ChipStyle(
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                    iconColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    iconSize:
                                                                        16.0,
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.0),
                                                                  ),
                                                                  chipSpacing:
                                                                      8.0,
                                                                  rowSpacing:
                                                                      8.0,
                                                                  multiselect:
                                                                      false,
                                                                  initialized:
                                                                      _model.choiceChipsValue !=
                                                                          null,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  controller: _model
                                                                          .choiceChipsValueController ??=
                                                                      FormFieldController<
                                                                          List<
                                                                              String>>(
                                                                    ['All'],
                                                                  ),
                                                                  wrapped:
                                                                      false,
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
                                              Divider(
                                                thickness: 0.5,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .propSearchTextController,
                                                      focusNode: _model
                                                          .propSearchFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.propSearchTextController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () async {
                                                          _model.chats =
                                                              await queryBroadcastsRecordOnce();
                                                          _model.resultAll = functions
                                                              .filterDocsBySearch(
                                                                  _model.chats!
                                                                      .toList(),
                                                                  'broadcast_name',
                                                                  _model
                                                                      .propSearchTextController
                                                                      .text)
                                                              .toList()
                                                              .cast<
                                                                  BroadcastsRecord>();
                                                          safeSetState(() {});

                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: false,
                                                        labelText:
                                                            'Search for chat...',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        prefixIcon: Icon(
                                                          Icons.search_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                      minLines: 1,
                                                      validator: _model
                                                          .propSearchTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              if (_model.propSearchTextController
                                                          .text !=
                                                      '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final resultsAll = _model
                                                          .resultAll
                                                          .toList()
                                                          .take(5)
                                                          .toList();

                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            resultsAll.length,
                                                        itemBuilder: (context,
                                                            resultsAllIndex) {
                                                          final resultsAllItem =
                                                              resultsAll[
                                                                  resultsAllIndex];
                                                          return Visibility(
                                                            visible: (resultsAllItem
                                                                        .recipients
                                                                        .contains(
                                                                            currentUserReference) ==
                                                                    true) &&
                                                                (resultsAllItem
                                                                    .unreadUsers
                                                                    .isNotEmpty),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await actions
                                                                      .updateReadStatusBatch(
                                                                    resultsAllItem
                                                                        .reference,
                                                                    resultsAllItem
                                                                        .lastMessageSentRef,
                                                                    resultsAllItem
                                                                        .unreadMessages
                                                                        .toList(),
                                                                    currentUserReference!,
                                                                  );
                                                                  _model.lstUnreadMessage =
                                                                      [];
                                                                  _model.intIncrement =
                                                                      null;

                                                                  context
                                                                      .pushNamed(
                                                                    MessageUniversalNewCopyWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'broadcastID':
                                                                          serializeParam(
                                                                        resultsAllItem
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                      'broadcastName':
                                                                          serializeParam(
                                                                        resultsAllItem
                                                                            .broadcastName,
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      0.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        90.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Stack(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (resultsAllItem.groupType != '')
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Text(
                                                                                                  resultsAllItem.broadcastName,
                                                                                                  textAlign: TextAlign.start,
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          if (resultsAllItem.groupType == '')
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                if (resultsAllItem.recipients.length > 2)
                                                                                                  Text(
                                                                                                    resultsAllItem.broadcastName,
                                                                                                    textAlign: TextAlign.start,
                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                StreamBuilder<UserRecord>(
                                                                                                  stream: UserRecord.getDocument(functions.getOtherUserRef(resultsAllItem.recipients.toList(), currentUserReference)!),
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

                                                                                                    final columnUserRecord = snapshot.data!;

                                                                                                    return Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        if ((resultsAllItem.recipients.length <= 2) && (resultsAllItem.recipients.length > 1))
                                                                                                          Text(
                                                                                                            columnUserRecord.displayName,
                                                                                                            textAlign: TextAlign.start,
                                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                                ),
                                                                                                          ),
                                                                                                      ],
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                      if (resultsAllItem.lastMessageOwner != null)
                                                                                        StreamBuilder<UserRecord>(
                                                                                          stream: UserRecord.getDocument(resultsAllItem.lastMessageOwner!),
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

                                                                                            final columnUserRecord = snapshot.data!;

                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    RichText(
                                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                                      text: TextSpan(
                                                                                                        children: [
                                                                                                          TextSpan(
                                                                                                            text: columnUserRecord.reference == currentUserReference ? 'You' : columnUserRecord.displayName,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                ),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: ': ',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                ),
                                                                                                          )
                                                                                                        ],
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    StreamBuilder<BroadcastMessagesRecord>(
                                                                                                      stream: BroadcastMessagesRecord.getDocument(resultsAllItem.lastMessageSentRef!),
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

                                                                                                        final columnBroadcastMessagesRecord = snapshot.data!;

                                                                                                        return Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Builder(
                                                                                                              builder: (context) {
                                                                                                                if (columnBroadcastMessagesRecord.file != '') {
                                                                                                                  return Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Icon(
                                                                                                                        Icons.image_rounded,
                                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                                        size: 24.0,
                                                                                                                      ),
                                                                                                                      Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          resultsAllItem.lastMessage,
                                                                                                                          'Image',
                                                                                                                        ).maybeHandleOverflow(
                                                                                                                          maxChars: 25,
                                                                                                                          replacement: '…',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  );
                                                                                                                } else if (columnBroadcastMessagesRecord.currentLocation != null) {
                                                                                                                  return Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Icon(
                                                                                                                        Icons.pin_drop,
                                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                                        size: 24.0,
                                                                                                                      ),
                                                                                                                      Text(
                                                                                                                        valueOrDefault<String>(
                                                                                                                          resultsAllItem.lastMessage,
                                                                                                                          'Location',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  );
                                                                                                                } else {
                                                                                                                  return Text(
                                                                                                                    resultsAllItem.lastMessage.maybeHandleOverflow(
                                                                                                                      maxChars: 25,
                                                                                                                      replacement: '…',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                        ),
                                                                                                                  );
                                                                                                                }
                                                                                                              },
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                    Flexible(
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                          child: Text(
                                                                                                            valueOrDefault<String>(
                                                                                                              functions.formatMessageDateTimeDetailed(resultsAllItem.lastMessageTime!),
                                                                                                              'time',
                                                                                                            ),
                                                                                                            textAlign: TextAlign.start,
                                                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                                  color: Color(0xFF6F7274),
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                if (resultsAllItem.unreadUsers.contains(currentUserReference) == true)
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(1.0, -0.5),
                                                                                    child: Container(
                                                                                      width: 10.0,
                                                                                      height: 10.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        shape: BoxShape.circle,
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
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              if (_model.choiceChipsValue ==
                                                  'All')
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if ((_model.choiceChipsValue ==
                                                            'All') &&
                                                        (_model.propSearchTextController
                                                                    .text ==
                                                                ''))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            List<
                                                                BroadcastsRecord>>(
                                                          stream:
                                                              queryBroadcastsRecord(
                                                            queryBuilder: (broadcastsRecord) =>
                                                                broadcastsRecord
                                                                    .where(
                                                                      'recipients',
                                                                      arrayContains:
                                                                          currentUserReference,
                                                                    )
                                                                    .orderBy(
                                                                        'last_message_time',
                                                                        descending:
                                                                            true),
                                                            limit: 50,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitRipple(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<BroadcastsRecord>
                                                                allListBroadcastsRecordList =
                                                                snapshot.data!;

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  allListBroadcastsRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  allListIndex) {
                                                                final allListBroadcastsRecord =
                                                                    allListBroadcastsRecordList[
                                                                        allListIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await actions
                                                                          .updateReadStatusBatch(
                                                                        allListBroadcastsRecord
                                                                            .reference,
                                                                        allListBroadcastsRecord
                                                                            .lastMessageSentRef,
                                                                        allListBroadcastsRecord
                                                                            .unreadMessages
                                                                            .toList(),
                                                                        currentUserReference!,
                                                                      );
                                                                      _model.lstUnreadMessage =
                                                                          [];
                                                                      _model.intIncrement =
                                                                          null;

                                                                      context
                                                                          .pushNamed(
                                                                        MessageUniversalNewCopyWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'broadcastID':
                                                                              serializeParam(
                                                                            allListBroadcastsRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                          'broadcastName':
                                                                              serializeParam(
                                                                            allListBroadcastsRecord.broadcastName,
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          0.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            90.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(12.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Stack(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (allListBroadcastsRecord.groupType != '')
                                                                                                Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      allListBroadcastsRecord.broadcastName,
                                                                                                      textAlign: TextAlign.start,
                                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              if (allListBroadcastsRecord.groupType == '')
                                                                                                Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    if (allListBroadcastsRecord.recipients.length > 2)
                                                                                                      Text(
                                                                                                        allListBroadcastsRecord.broadcastName,
                                                                                                        textAlign: TextAlign.start,
                                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    StreamBuilder<UserRecord>(
                                                                                                      stream: UserRecord.getDocument(functions.getOtherUserRef(allListBroadcastsRecord.recipients.toList(), currentUserReference)!),
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

                                                                                                        final columnUserRecord = snapshot.data!;

                                                                                                        return Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            if ((allListBroadcastsRecord.recipients.length <= 2) && (allListBroadcastsRecord.recipients.length > 1))
                                                                                                              Text(
                                                                                                                columnUserRecord.displayName,
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                                    ),
                                                                                                              ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                          if (allListBroadcastsRecord.lastMessageOwner != null)
                                                                                            StreamBuilder<UserRecord>(
                                                                                              stream: UserRecord.getDocument(allListBroadcastsRecord.lastMessageOwner!),
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

                                                                                                final columnUserRecord = snapshot.data!;

                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        RichText(
                                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                                          text: TextSpan(
                                                                                                            children: [
                                                                                                              TextSpan(
                                                                                                                text: columnUserRecord.reference == currentUserReference ? 'You' : columnUserRecord.displayName,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                    ),
                                                                                                              ),
                                                                                                              TextSpan(
                                                                                                                text: ': ',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.bold,
                                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                    ),
                                                                                                              )
                                                                                                            ],
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        StreamBuilder<BroadcastMessagesRecord>(
                                                                                                          stream: BroadcastMessagesRecord.getDocument(allListBroadcastsRecord.lastMessageSentRef!),
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

                                                                                                            final columnBroadcastMessagesRecord = snapshot.data!;

                                                                                                            return Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Builder(
                                                                                                                  builder: (context) {
                                                                                                                    if (columnBroadcastMessagesRecord.file != '') {
                                                                                                                      return Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          Icon(
                                                                                                                            Icons.image_rounded,
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            size: 24.0,
                                                                                                                          ),
                                                                                                                          Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              allListBroadcastsRecord.lastMessage,
                                                                                                                              'Image',
                                                                                                                            ).maybeHandleOverflow(
                                                                                                                              maxChars: 25,
                                                                                                                              replacement: '…',
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      );
                                                                                                                    } else if (columnBroadcastMessagesRecord.currentLocation != null) {
                                                                                                                      return Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          Icon(
                                                                                                                            Icons.pin_drop,
                                                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                                                            size: 24.0,
                                                                                                                          ),
                                                                                                                          Text(
                                                                                                                            valueOrDefault<String>(
                                                                                                                              allListBroadcastsRecord.lastMessage,
                                                                                                                              'Location',
                                                                                                                            ),
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      );
                                                                                                                    } else {
                                                                                                                      return Text(
                                                                                                                        allListBroadcastsRecord.lastMessage.maybeHandleOverflow(
                                                                                                                          maxChars: 25,
                                                                                                                          replacement: '…',
                                                                                                                        ),
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                            ),
                                                                                                                      );
                                                                                                                    }
                                                                                                                  },
                                                                                                                ),
                                                                                                              ],
                                                                                                            );
                                                                                                          },
                                                                                                        ),
                                                                                                        Flexible(
                                                                                                          child: Align(
                                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                valueOrDefault<String>(
                                                                                                                  functions.formatMessageDateTimeDetailed(allListBroadcastsRecord.lastMessageTime!),
                                                                                                                  'time',
                                                                                                                ),
                                                                                                                textAlign: TextAlign.start,
                                                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                                      color: Color(0xFF6F7274),
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    if (allListBroadcastsRecord.unreadUsers.contains(currentUserReference) == true)
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1.0, -0.5),
                                                                                        child: Container(
                                                                                          width: 10.0,
                                                                                          height: 10.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            shape: BoxShape.circle,
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
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              if ((_model.choiceChipsValue ==
                                                      'Management Groups') &&
                                                  (_model.propSearchTextController
                                                              .text ==
                                                          ''))
                                                StreamBuilder<
                                                    List<BroadcastsRecord>>(
                                                  stream: queryBroadcastsRecord(
                                                    queryBuilder:
                                                        (broadcastsRecord) =>
                                                            broadcastsRecord
                                                                .where(
                                                                  'recipients',
                                                                  arrayContains:
                                                                      currentUserReference,
                                                                )
                                                                .where(
                                                                  'group_type',
                                                                  isEqualTo:
                                                                      'Owner House',
                                                                )
                                                                .orderBy(
                                                                    'last_message_time',
                                                                    descending:
                                                                        true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<BroadcastsRecord>
                                                        managementListBroadcastsRecordList =
                                                        snapshot.data!;

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          managementListBroadcastsRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          managementListIndex) {
                                                        final managementListBroadcastsRecord =
                                                            managementListBroadcastsRecordList[
                                                                managementListIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      1.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await actions
                                                                  .updateReadStatusBatch(
                                                                managementListBroadcastsRecord
                                                                    .reference,
                                                                managementListBroadcastsRecord
                                                                    .lastMessageSentRef,
                                                                managementListBroadcastsRecord
                                                                    .unreadMessages
                                                                    .toList(),
                                                                currentUserReference!,
                                                              );
                                                              _model.lstUnreadMessage =
                                                                  [];
                                                              _model.intIncrement =
                                                                  null;

                                                              context.pushNamed(
                                                                MessageUniversalNewCopyWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'broadcastID':
                                                                      serializeParam(
                                                                    managementListBroadcastsRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                  'broadcastName':
                                                                      serializeParam(
                                                                    managementListBroadcastsRecord
                                                                        .broadcastName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 90.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Stack(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (managementListBroadcastsRecord.groupType != '')
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              managementListBroadcastsRecord.broadcastName,
                                                                                              textAlign: TextAlign.start,
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (managementListBroadcastsRecord.groupType == '')
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (managementListBroadcastsRecord.recipients.length > 2)
                                                                                              Text(
                                                                                                managementListBroadcastsRecord.broadcastName,
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            StreamBuilder<UserRecord>(
                                                                                              stream: UserRecord.getDocument(functions.getOtherUserRef(managementListBroadcastsRecord.recipients.toList(), currentUserReference)!),
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

                                                                                                final columnUserRecord = snapshot.data!;

                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    if ((managementListBroadcastsRecord.recipients.length <= 2) && (managementListBroadcastsRecord.recipients.length > 1))
                                                                                                      Text(
                                                                                                        columnUserRecord.displayName,
                                                                                                        textAlign: TextAlign.start,
                                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                  StreamBuilder<UserRecord>(
                                                                                    stream: UserRecord.getDocument(managementListBroadcastsRecord.lastMessageOwner!),
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

                                                                                      final columnUserRecord = snapshot.data!;

                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              RichText(
                                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                                text: TextSpan(
                                                                                                  children: [
                                                                                                    TextSpan(
                                                                                                      text: columnUserRecord.reference == currentUserReference ? 'You' : columnUserRecord.displayName,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                    TextSpan(
                                                                                                      text: ': ',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                          ),
                                                                                                    )
                                                                                                  ],
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              StreamBuilder<BroadcastMessagesRecord>(
                                                                                                stream: BroadcastMessagesRecord.getDocument(managementListBroadcastsRecord.lastMessageSentRef!),
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

                                                                                                  final columnBroadcastMessagesRecord = snapshot.data!;

                                                                                                  return Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Builder(
                                                                                                        builder: (context) {
                                                                                                          if (columnBroadcastMessagesRecord.file != '') {
                                                                                                            return Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Icon(
                                                                                                                  Icons.image_rounded,
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  size: 24.0,
                                                                                                                ),
                                                                                                                Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    managementListBroadcastsRecord.lastMessage,
                                                                                                                    'Image',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            );
                                                                                                          } else if (columnBroadcastMessagesRecord.currentLocation != null) {
                                                                                                            return Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Icon(
                                                                                                                  Icons.pin_drop,
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  size: 24.0,
                                                                                                                ),
                                                                                                                Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    managementListBroadcastsRecord.lastMessage,
                                                                                                                    'Location',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            );
                                                                                                          } else {
                                                                                                            return Text(
                                                                                                              managementListBroadcastsRecord.lastMessage.maybeHandleOverflow(
                                                                                                                maxChars: 25,
                                                                                                                replacement: '…',
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                  ),
                                                                                                            );
                                                                                                          }
                                                                                                        },
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        functions.formatMessageDateTimeDetailed(managementListBroadcastsRecord.lastMessageTime!),
                                                                                                        'time',
                                                                                                      ),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                            color: Color(0xFF6F7274),
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            if (managementListBroadcastsRecord.unreadUsers.contains(currentUserReference) ==
                                                                                true)
                                                                              Align(
                                                                                alignment: AlignmentDirectional(1.0, -0.5),
                                                                                child: Container(
                                                                                  width: 10.0,
                                                                                  height: 10.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    shape: BoxShape.circle,
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
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              if ((_model.choiceChipsValue ==
                                                      'People') &&
                                                  (_model.propSearchTextController
                                                              .text ==
                                                          ''))
                                                StreamBuilder<
                                                    List<BroadcastsRecord>>(
                                                  stream: queryBroadcastsRecord(
                                                    queryBuilder:
                                                        (broadcastsRecord) =>
                                                            broadcastsRecord
                                                                .where(
                                                                  'recipients',
                                                                  arrayContains:
                                                                      currentUserReference,
                                                                )
                                                                .orderBy(
                                                                    'last_message_time',
                                                                    descending:
                                                                        true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<BroadcastsRecord>
                                                        peopleListBroadcastsRecordList =
                                                        snapshot.data!;

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          peopleListBroadcastsRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          peopleListIndex) {
                                                        final peopleListBroadcastsRecord =
                                                            peopleListBroadcastsRecordList[
                                                                peopleListIndex];
                                                        return Visibility(
                                                          visible: (peopleListBroadcastsRecord
                                                                      .groupType !=
                                                                  'Owner House') &&
                                                              (peopleListBroadcastsRecord
                                                                      .recipients
                                                                      .length <=
                                                                  2),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await actions
                                                                    .updateReadStatusBatch(
                                                                  peopleListBroadcastsRecord
                                                                      .reference,
                                                                  peopleListBroadcastsRecord
                                                                      .lastMessageSentRef,
                                                                  peopleListBroadcastsRecord
                                                                      .unreadMessages
                                                                      .toList(),
                                                                  currentUserReference!,
                                                                );
                                                                _model.lstUnreadMessage =
                                                                    [];
                                                                _model.intIncrement =
                                                                    null;

                                                                context
                                                                    .pushNamed(
                                                                  MessageUniversalNewCopyWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'broadcastID':
                                                                        serializeParam(
                                                                      peopleListBroadcastsRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'broadcastName':
                                                                        serializeParam(
                                                                      peopleListBroadcastsRecord
                                                                          .broadcastName,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 0.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 90.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            12.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (peopleListBroadcastsRecord.groupType != '')
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                peopleListBroadcastsRecord.broadcastName,
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        if (peopleListBroadcastsRecord.groupType == '')
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (peopleListBroadcastsRecord.recipients.length > 2)
                                                                                                Text(
                                                                                                  peopleListBroadcastsRecord.broadcastName,
                                                                                                  textAlign: TextAlign.start,
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              StreamBuilder<UserRecord>(
                                                                                                stream: UserRecord.getDocument(functions.getOtherUserRef(peopleListBroadcastsRecord.recipients.toList(), currentUserReference)!),
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

                                                                                                  final columnUserRecord = snapshot.data!;

                                                                                                  return Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      if ((peopleListBroadcastsRecord.recipients.length <= 2) && (peopleListBroadcastsRecord.recipients.length > 1))
                                                                                                        Text(
                                                                                                          columnUserRecord.displayName,
                                                                                                          textAlign: TextAlign.start,
                                                                                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                              ),
                                                                                                        ),
                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                    StreamBuilder<UserRecord>(
                                                                                      stream: UserRecord.getDocument(peopleListBroadcastsRecord.lastMessageOwner!),
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

                                                                                        final columnUserRecord = snapshot.data!;

                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                RichText(
                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                  text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                        text: columnUserRecord.reference == currentUserReference ? 'You' : columnUserRecord.displayName,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: ': ',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      )
                                                                                                    ],
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                StreamBuilder<BroadcastMessagesRecord>(
                                                                                                  stream: BroadcastMessagesRecord.getDocument(peopleListBroadcastsRecord.lastMessageSentRef!),
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

                                                                                                    final columnBroadcastMessagesRecord = snapshot.data!;

                                                                                                    return Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Builder(
                                                                                                          builder: (context) {
                                                                                                            if (columnBroadcastMessagesRecord.file != '') {
                                                                                                              return Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Icon(
                                                                                                                    Icons.image_rounded,
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    size: 24.0,
                                                                                                                  ),
                                                                                                                  Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      peopleListBroadcastsRecord.lastMessage,
                                                                                                                      'Image',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            } else if (columnBroadcastMessagesRecord.currentLocation != null) {
                                                                                                              return Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Icon(
                                                                                                                    Icons.pin_drop,
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    size: 24.0,
                                                                                                                  ),
                                                                                                                  Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      peopleListBroadcastsRecord.lastMessage,
                                                                                                                      'Location',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            } else {
                                                                                                              return Text(
                                                                                                                peopleListBroadcastsRecord.lastMessage.maybeHandleOverflow(
                                                                                                                  maxChars: 25,
                                                                                                                  replacement: '…',
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                    ),
                                                                                                              );
                                                                                                            }
                                                                                                          },
                                                                                                        ),
                                                                                                      ],
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                                Flexible(
                                                                                                  child: Align(
                                                                                                    alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          functions.formatMessageDateTimeDetailed(peopleListBroadcastsRecord.lastMessageTime!),
                                                                                                          'time',
                                                                                                        ),
                                                                                                        textAlign: TextAlign.start,
                                                                                                        style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                              color: Color(0xFF6F7274),
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              if (peopleListBroadcastsRecord.unreadUsers.contains(currentUserReference) == true)
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, -0.5),
                                                                                  child: Container(
                                                                                    width: 10.0,
                                                                                    height: 10.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      shape: BoxShape.circle,
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
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              if ((_model.choiceChipsValue ==
                                                      'Unread') &&
                                                  (_model.propSearchTextController
                                                              .text ==
                                                          ''))
                                                StreamBuilder<
                                                    List<BroadcastsRecord>>(
                                                  stream: queryBroadcastsRecord(
                                                    queryBuilder:
                                                        (broadcastsRecord) =>
                                                            broadcastsRecord
                                                                .where(
                                                                  'unread_users',
                                                                  arrayContains:
                                                                      currentUserReference,
                                                                )
                                                                .orderBy(
                                                                    'last_message_time',
                                                                    descending:
                                                                        true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<BroadcastsRecord>
                                                        unreadListBroadcastsRecordList =
                                                        snapshot.data!;

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          unreadListBroadcastsRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          unreadListIndex) {
                                                        final unreadListBroadcastsRecord =
                                                            unreadListBroadcastsRecordList[
                                                                unreadListIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      1.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await actions
                                                                  .updateReadStatusBatch(
                                                                unreadListBroadcastsRecord
                                                                    .reference,
                                                                unreadListBroadcastsRecord
                                                                    .lastMessageSentRef,
                                                                unreadListBroadcastsRecord
                                                                    .unreadMessages
                                                                    .toList(),
                                                                currentUserReference!,
                                                              );
                                                              _model.lstUnreadMessage =
                                                                  [];
                                                              _model.intIncrement =
                                                                  null;

                                                              context.pushNamed(
                                                                MessageUniversalNewCopyWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'broadcastID':
                                                                      serializeParam(
                                                                    unreadListBroadcastsRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                  'broadcastName':
                                                                      serializeParam(
                                                                    unreadListBroadcastsRecord
                                                                        .broadcastName,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 90.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Stack(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (unreadListBroadcastsRecord.groupType != '')
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              unreadListBroadcastsRecord.broadcastName,
                                                                                              textAlign: TextAlign.start,
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (unreadListBroadcastsRecord.groupType == '')
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (unreadListBroadcastsRecord.recipients.length > 2)
                                                                                              Text(
                                                                                                unreadListBroadcastsRecord.broadcastName,
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            StreamBuilder<UserRecord>(
                                                                                              stream: UserRecord.getDocument(functions.getOtherUserRef(unreadListBroadcastsRecord.recipients.toList(), currentUserReference)!),
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

                                                                                                final columnUserRecord = snapshot.data!;

                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    if ((unreadListBroadcastsRecord.recipients.length <= 2) && (unreadListBroadcastsRecord.recipients.length > 1))
                                                                                                      Text(
                                                                                                        columnUserRecord.displayName,
                                                                                                        textAlign: TextAlign.start,
                                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                  StreamBuilder<UserRecord>(
                                                                                    stream: UserRecord.getDocument(unreadListBroadcastsRecord.lastMessageOwner!),
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

                                                                                      final columnUserRecord = snapshot.data!;

                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              RichText(
                                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                                text: TextSpan(
                                                                                                  children: [
                                                                                                    TextSpan(
                                                                                                      text: columnUserRecord.reference == currentUserReference ? 'You' : columnUserRecord.displayName,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                    TextSpan(
                                                                                                      text: ': ',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                          ),
                                                                                                    )
                                                                                                  ],
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              StreamBuilder<BroadcastMessagesRecord>(
                                                                                                stream: BroadcastMessagesRecord.getDocument(unreadListBroadcastsRecord.lastMessageSentRef!),
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

                                                                                                  final columnBroadcastMessagesRecord = snapshot.data!;

                                                                                                  return Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Builder(
                                                                                                        builder: (context) {
                                                                                                          if (columnBroadcastMessagesRecord.file != '') {
                                                                                                            return Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Icon(
                                                                                                                  Icons.image_rounded,
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  size: 24.0,
                                                                                                                ),
                                                                                                                Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    unreadListBroadcastsRecord.lastMessage,
                                                                                                                    'Image',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            );
                                                                                                          } else if (columnBroadcastMessagesRecord.currentLocation != null) {
                                                                                                            return Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Icon(
                                                                                                                  Icons.pin_drop,
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  size: 24.0,
                                                                                                                ),
                                                                                                                Text(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    unreadListBroadcastsRecord.lastMessage,
                                                                                                                    'Location',
                                                                                                                  ),
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            );
                                                                                                          } else {
                                                                                                            return Text(
                                                                                                              unreadListBroadcastsRecord.lastMessage.maybeHandleOverflow(
                                                                                                                maxChars: 25,
                                                                                                                replacement: '…',
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                  ),
                                                                                                            );
                                                                                                          }
                                                                                                        },
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      dateTimeFormat(
                                                                                                        "relative",
                                                                                                        unreadListBroadcastsRecord.lastMessageTime!,
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      ),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                            color: Color(0xFF6F7274),
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            if (unreadListBroadcastsRecord.unreadUsers.contains(currentUserReference) ==
                                                                                true)
                                                                              Align(
                                                                                alignment: AlignmentDirectional(1.0, -0.5),
                                                                                child: Container(
                                                                                  width: 10.0,
                                                                                  height: 10.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    shape: BoxShape.circle,
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
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              if ((_model.choiceChipsValue ==
                                                      'Groups') &&
                                                  (_model.propSearchTextController
                                                              .text ==
                                                          ''))
                                                StreamBuilder<
                                                    List<BroadcastsRecord>>(
                                                  stream: queryBroadcastsRecord(
                                                    queryBuilder:
                                                        (broadcastsRecord) =>
                                                            broadcastsRecord
                                                                .where(
                                                                  'recipients',
                                                                  arrayContains:
                                                                      currentUserReference,
                                                                )
                                                                .orderBy(
                                                                    'last_message_time',
                                                                    descending:
                                                                        true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<BroadcastsRecord>
                                                        groupsListBroadcastsRecordList =
                                                        snapshot.data!;

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          groupsListBroadcastsRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          groupsListIndex) {
                                                        final groupsListBroadcastsRecord =
                                                            groupsListBroadcastsRecordList[
                                                                groupsListIndex];
                                                        return Visibility(
                                                          visible: (groupsListBroadcastsRecord
                                                                      .groupType !=
                                                                  'Owner House') &&
                                                              (groupsListBroadcastsRecord
                                                                      .recipients
                                                                      .length >
                                                                  2),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await actions
                                                                    .updateReadStatusBatch(
                                                                  groupsListBroadcastsRecord
                                                                      .reference,
                                                                  groupsListBroadcastsRecord
                                                                      .lastMessageSentRef,
                                                                  groupsListBroadcastsRecord
                                                                      .unreadMessages
                                                                      .toList(),
                                                                  currentUserReference!,
                                                                );
                                                                _model.lstUnreadMessage =
                                                                    [];
                                                                _model.intIncrement =
                                                                    null;

                                                                context
                                                                    .pushNamed(
                                                                  MessageUniversalNewCopyWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'broadcastID':
                                                                        serializeParam(
                                                                      groupsListBroadcastsRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'broadcastName':
                                                                        serializeParam(
                                                                      groupsListBroadcastsRecord
                                                                          .broadcastName,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 0.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 90.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            12.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    if (groupsListBroadcastsRecord.recipients.length > 2)
                                                                                      Text(
                                                                                        groupsListBroadcastsRecord.broadcastName,
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    FutureBuilder<UserRecord>(
                                                                                      future: UserRecord.getDocumentOnce(functions.getOtherUserRef(groupsListBroadcastsRecord.recipients.toList(), currentUserReference)!),
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

                                                                                        final columnUserRecord = snapshot.data!;

                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if ((groupsListBroadcastsRecord.recipients.length <= 2) && (groupsListBroadcastsRecord.recipients.length > 1))
                                                                                              Text(
                                                                                                columnUserRecord.displayName,
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                    FutureBuilder<UserRecord>(
                                                                                      future: UserRecord.getDocumentOnce(groupsListBroadcastsRecord.lastMessageOwner!),
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

                                                                                        final columnUserRecord = snapshot.data!;

                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                RichText(
                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                  text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                        text: columnUserRecord.reference == currentUserReference ? 'You' : columnUserRecord.displayName,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: ': ',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      )
                                                                                                    ],
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                FutureBuilder<BroadcastMessagesRecord>(
                                                                                                  future: BroadcastMessagesRecord.getDocumentOnce(groupsListBroadcastsRecord.lastMessageSentRef!),
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

                                                                                                    final columnBroadcastMessagesRecord = snapshot.data!;

                                                                                                    return Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Builder(
                                                                                                          builder: (context) {
                                                                                                            if (columnBroadcastMessagesRecord.file != '') {
                                                                                                              return Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Icon(
                                                                                                                    Icons.image_rounded,
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    size: 24.0,
                                                                                                                  ),
                                                                                                                  Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      groupsListBroadcastsRecord.lastMessage,
                                                                                                                      'Image',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            } else if (columnBroadcastMessagesRecord.currentLocation != null) {
                                                                                                              return Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  Icon(
                                                                                                                    Icons.pin_drop,
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    size: 24.0,
                                                                                                                  ),
                                                                                                                  Text(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      groupsListBroadcastsRecord.lastMessage,
                                                                                                                      'Location',
                                                                                                                    ),
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            } else if ((columnBroadcastMessagesRecord.currentLocation == null) && (columnBroadcastMessagesRecord.file == '')) {
                                                                                                              return Text(
                                                                                                                groupsListBroadcastsRecord.lastMessage.maybeHandleOverflow(
                                                                                                                  maxChars: 25,
                                                                                                                  replacement: '…',
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                    ),
                                                                                                              );
                                                                                                            } else {
                                                                                                              return Text(
                                                                                                                groupsListBroadcastsRecord.lastMessage.maybeHandleOverflow(
                                                                                                                  maxChars: 25,
                                                                                                                  replacement: '…',
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                                    ),
                                                                                                              );
                                                                                                            }
                                                                                                          },
                                                                                                        ),
                                                                                                      ],
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                                Flexible(
                                                                                                  child: Align(
                                                                                                    alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          functions.formatMessageDateTimeDetailed(groupsListBroadcastsRecord.lastMessageTime!),
                                                                                                          'time',
                                                                                                        ),
                                                                                                        textAlign: TextAlign.start,
                                                                                                        style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                                              color: Color(0xFF6F7274),
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              if (groupsListBroadcastsRecord.unreadUsers.contains(currentUserReference) == true)
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, -0.5),
                                                                                  child: Container(
                                                                                    width: 10.0,
                                                                                    height: 10.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      shape: BoxShape.circle,
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
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              Divider(
                                                thickness: 0.5,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              StreamBuilder<List<AgentRecord>>(
                                stream: queryAgentRecord(
                                  queryBuilder: (agentRecord) =>
                                      agentRecord.where(
                                    'user_id',
                                    isEqualTo: currentUserReference,
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
                                  List<AgentRecord> columnAgentRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final columnAgentRecord =
                                      columnAgentRecordList.isNotEmpty
                                          ? columnAgentRecordList.first
                                          : null;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if ((columnAgentRecord?.role !=
                                              'Connect') &&
                                          (columnAgentRecord?.role !=
                                              'Connect Manager'))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    32.0, 32.0, 32.0, 32.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.8,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.error_outline_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 64.0,
                                                    ),
                                                    Text(
                                                      'Your role does not permit you to access this part of the app',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMediumIsCustom,
                                                          ),
                                                    ),
                                                    Text(
                                                      'Contact employer for more info.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLargeIsCustom,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if ((columnAgentRecord?.role ==
                                              'Connect') ||
                                          (columnAgentRecord?.role ==
                                              'Connect Manager'))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 20.0, 6.0, 0.0),
                                          child: Container(
                                            height: 350.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          6.0, 16.0, 6.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Select Feature You  Want To Access',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
                                                                    ),
                                                              )
                                                            ],
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
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(6.0, 10.0,
                                                                6.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 250.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: GridView(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                          0,
                                                          8.0,
                                                          0,
                                                          8.0,
                                                        ),
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 3,
                                                          mainAxisSpacing: 10.0,
                                                          childAspectRatio:
                                                              0.75,
                                                        ),
                                                        primary: false,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                  PropertiesForCommunicationAgentWidget
                                                                      .routeName);
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            90.0,
                                                                        height:
                                                                            90.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/Icon_designs___anon-tipoff.png',
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                200.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        FutureBuilder<
                                                                            int>(
                                                                          future:
                                                                              queryTipOffsRecordCount(
                                                                            queryBuilder: (tipOffsRecord) => tipOffsRecord
                                                                                .where(
                                                                                  'landlord_id',
                                                                                  isEqualTo: columnAgentRecord?.owner.firstOrNull,
                                                                                )
                                                                                .where(
                                                                                  'opened',
                                                                                  isEqualTo: false,
                                                                                ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            int rowCount =
                                                                                snapshot.data!;

                                                                            return Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                if (rowCount != 0)
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -1.0),
                                                                                    child: Container(
                                                                                      width: functions.estimateTextWidthNoti(rowCount.toString()),
                                                                                      height: 20.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        borderRadius: BorderRadius.circular(20.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          rowCount.toString(),
                                                                                          '0',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                              ].addToStart(SizedBox(width: 25.0)),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          'Anonymous Tip-Off',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            FeatureComingSoonWidget(),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            90.0,
                                                                        height:
                                                                            90.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/Icon_designs__Give-Notice.png',
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                200.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          'Notice Given',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            FeatureComingSoonWidget(),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            90.0,
                                                                        height:
                                                                            90.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/Tenants_-_compact.png',
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                200.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          'New Tenant',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Container(
                                                              width: 150.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      PropertiesForCommunicationWidget
                                                                          .routeName);
                                                                },
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Stack(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                90.0,
                                                                            height:
                                                                                90.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/Icon_designs___anon-tipoff.png',
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            'Anonymous Tip-Off',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 150.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                FeatureComingSoonWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Stack(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                90.0,
                                                                            height:
                                                                                90.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/Icon_designs__Give-Notice.png',
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            'Notice Given',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 150.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                FeatureComingSoonWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Stack(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                90.0,
                                                                            height:
                                                                                90.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/Tenants_-_compact.png',
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            'New Tenant',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                        ),
                                                      ].addToEnd(SizedBox(
                                                          height: 25.0)),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => FutureBuilder<int>(
                                future: queryTipOffsRecordCount(
                                  queryBuilder: (tipOffsRecord) => tipOffsRecord
                                      .where(
                                        'landlord_id',
                                        isEqualTo: (currentUserDocument
                                                    ?.employer
                                                    .toList() ??
                                                [])
                                            .firstOrNull,
                                      )
                                      .where(
                                        'opened',
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  int rowCount = snapshot.data!;

                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      if (rowCount != 0)
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Container(
                                            width:
                                                functions.estimateTextWidthNoti(
                                                    rowCount.toString()),
                                            height: 20.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                rowCount.toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 10.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                    ].addToEnd(SizedBox(width: 17.0)),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FutureBuilder<int>(
                                future: queryBroadcastsRecordCount(
                                  queryBuilder: (broadcastsRecord) =>
                                      broadcastsRecord.where(
                                    'unread_users',
                                    arrayContains: currentUserReference,
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
                                  int rowCount = snapshot.data!;

                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (rowCount != 0)
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Container(
                                            width:
                                                functions.estimateTextWidthNoti(
                                                    rowCount.toString()),
                                            height: 20.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                rowCount.toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 10.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                    ].addToStart(SizedBox(width: 55.0)),
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
            ],
          ),
        ),
      ),
    );
  }
}
