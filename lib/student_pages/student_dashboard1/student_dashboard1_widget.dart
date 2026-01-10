import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/student_pages/show_info/show_info_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'student_dashboard1_model.dart';
export 'student_dashboard1_model.dart';

class StudentDashboard1Widget extends StatefulWidget {
  const StudentDashboard1Widget({super.key});

  static String routeName = 'Student_Dashboard1';
  static String routePath = '/studentDashboard1';

  @override
  State<StudentDashboard1Widget> createState() =>
      _StudentDashboard1WidgetState();
}

class _StudentDashboard1WidgetState extends State<StudentDashboard1Widget>
    with TickerProviderStateMixin {
  late StudentDashboard1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentDashboard1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.tenantProperty = await queryPropertyRecordOnce(
        queryBuilder: (propertyRecord) => propertyRecord.where(
          'studentInProperty',
          arrayContains: currentUserReference,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      await actions.debugPrint(
        currentUserReference!.path,
      );
      await actions.startPageLocationTimer();
      if ((valueOrDefault<bool>(currentUserDocument?.showInfo, false) ==
              null) ||
          (valueOrDefault<bool>(currentUserDocument?.showInfo, false) ==
              false)) {
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
                  child: ShowInfoWidget(),
                ),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'lottieAnimationOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'lottieAnimationOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'lottieAnimationOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'lottieAnimationOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'lottieAnimationOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: PopScope(
        canPop: false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          floatingActionButton: Visibility(
            visible: FFAppState().whatsappIconShow == true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 24.0),
              child: FloatingActionButton(
                onPressed: () async {
                  await launchURL('https://wa.me/27664971189');
                },
                backgroundColor: Color(0xFF25D366),
                elevation: 8.0,
                child: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: FlutterFlowTheme.of(context).info,
                  size: 30.0,
                ),
              ),
            ),
          ),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Hi ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                      TextSpan(
                                        text: currentUserDisplayName,
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' !',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(ProfileWidget.routeName);
                                  },
                                  child: Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Icon_designs___Tenant.png',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Welcome To Your Student Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLargeFamily,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: MediaQuery.sizeOf(context).height,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: Stack(
                                        children: [
                                          Column(
                                            children: [
                                              Align(
                                                alignment: Alignment(0.0, 0),
                                                child: TabBar(
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumIsCustom,
                                                          ),
                                                  unselectedLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumIsCustom,
                                                          ),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: [
                                                    Tab(
                                                      text: 'Home',
                                                    ),
                                                    Tab(
                                                      text: 'Messages',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 200.0,
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        350.0,
                                                                    child:
                                                                        CarouselSlider(
                                                                      items: [
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(12.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Text(
                                                                                          'My Admin',
                                                                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                                              ),
                                                                                        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: Text(
                                                                                            'Sign contracts and manage your official documents',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0xCAE0E3E7),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Lottie.asset(
                                                                                        'assets/jsons/sign.json',
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        fit: BoxFit.contain,
                                                                                        animate: true,
                                                                                      ).animateOnPageLoad(animationsMap['lottieAnimationOnPageLoadAnimation1']!),
                                                                                    ].addToStart(SizedBox(width: 25.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation1']!),
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await actions.debugPrint(
                                                                              _model.tenantProperty!.reference.path,
                                                                            );
                                                                          },
                                                                          child:
                                                                              Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                2.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 100.0,
                                                                              height: 500.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x33000000),
                                                                                    offset: Offset(
                                                                                      0.0,
                                                                                      2.0,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(12.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Text(
                                                                                            'My Home',
                                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                                                ),
                                                                                          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Flexible(
                                                                                            child: Text(
                                                                                              'View details about your housemates',
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: Color(0xCAE0E3E7),
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation4']!),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Container(
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: Lottie.asset(
                                                                                            'assets/jsons/my_home.json',
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            fit: BoxFit.contain,
                                                                                            animate: true,
                                                                                          ).animateOnPageLoad(animationsMap['lottieAnimationOnPageLoadAnimation2']!),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation2']!),
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(12.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Fix-It',
                                                                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                                              ),
                                                                                        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation5']!),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: Text(
                                                                                            'Go here to access RedRabbit for maintenance requests',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0xCAE0E3E7),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation6']!),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Lottie.asset(
                                                                                        'assets/jsons/tools.json',
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        fit: BoxFit.contain,
                                                                                        animate: true,
                                                                                      ).animateOnPageLoad(animationsMap['lottieAnimationOnPageLoadAnimation3']!),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation3']!),
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(12.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Communication',
                                                                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                                              ),
                                                                                        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation7']!),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: Text(
                                                                                            'Send anonymous tip-offs about any issues',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0xCAE0E3E7),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation8']!),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Lottie.asset(
                                                                                        'assets/jsons/sendd.json',
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        fit: BoxFit.contain,
                                                                                        animate: true,
                                                                                      ).animateOnPageLoad(animationsMap['lottieAnimationOnPageLoadAnimation4']!),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation4']!),
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(12.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Info Board',
                                                                                          style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                                              ),
                                                                                        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation9']!),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: Text(
                                                                                            'Stay updated with announcements from your landlord',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0xCAE0E3E7),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                ),
                                                                                          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation10']!),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: Lottie.asset(
                                                                                            'assets/jsons/info.json',
                                                                                            width: 100.0,
                                                                                            height: 50.0,
                                                                                            fit: BoxFit.contain,
                                                                                            animate: true,
                                                                                          ).animateOnPageLoad(animationsMap['lottieAnimationOnPageLoadAnimation5']!),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation5']!),
                                                                      ],
                                                                      carouselController:
                                                                          _model.carouselController ??=
                                                                              CarouselSliderController(),
                                                                      options:
                                                                          CarouselOptions(
                                                                        initialPage:
                                                                            1,
                                                                        viewportFraction:
                                                                            0.5,
                                                                        disableCenter:
                                                                            true,
                                                                        enlargeCenterPage:
                                                                            true,
                                                                        enlargeFactor:
                                                                            0.25,
                                                                        enableInfiniteScroll:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.horizontal,
                                                                        autoPlay:
                                                                            true,
                                                                        autoPlayAnimationDuration:
                                                                            Duration(milliseconds: 800),
                                                                        autoPlayInterval:
                                                                            Duration(milliseconds: (800 + 4000)),
                                                                        autoPlayCurve:
                                                                            Curves.linear,
                                                                        pauseAutoPlayInFiniteScroll:
                                                                            true,
                                                                        onPageChanged: (index,
                                                                                _) =>
                                                                            _model.carouselCurrentIndex =
                                                                                index,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                      GridView(
                                                                        padding:
                                                                            EdgeInsets.fromLTRB(
                                                                          0,
                                                                          30.0,
                                                                          0,
                                                                          30.0,
                                                                        ),
                                                                        gridDelegate:
                                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                          crossAxisCount:
                                                                              3,
                                                                          crossAxisSpacing:
                                                                              0.0,
                                                                          mainAxisSpacing:
                                                                              25.0,
                                                                          childAspectRatio:
                                                                              1.4,
                                                                        ),
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
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
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(StudentContractsScreeningWidget.routeName);
                                                                            },
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 80.0,
                                                                                      height: 80.0,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 250.0,
                                                                                          height: 250.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(StudentContractsScreeningWidget.routeName);
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Icon_designs___landlord.png',
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        tabletLandscape: false,
                                                                                        desktop: false,
                                                                                      ))
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'My Admin',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ))
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'My Admin',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 18.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                          if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                              true)
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(
                                                                                    HousematesWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'propertyID': serializeParam(
                                                                                        _model.tenantProperty?.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 90.0,
                                                                                          height: 90.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Icon_designs___my-house.png',
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'My Home',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'My Home',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                            ),
                                                                          if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                              true)
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(FixitScreenWidget.routeName);
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 90.0,
                                                                                          height: 90.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Icon_designs___fix-it.png',
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Fix-It',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Fix-It',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                            ),
                                                                          if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                              true)
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(HoouseRulesWidget.routeName);
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 90.0,
                                                                                          height: 90.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/house(png).png',
                                                                                              height: 300.0,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'House Rules',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'House Rules',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(SizedBox(height: 1.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                              true)
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(
                                                                                    CommunicationsWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'propertyID': serializeParam(
                                                                                        _model.tenantProperty?.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                      'propertyName': serializeParam(
                                                                                        _model.tenantProperty?.propertyName,
                                                                                        ParamType.String,
                                                                                      ),
                                                                                      'landlordID': serializeParam(
                                                                                        _model.tenantProperty?.landlordId,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 80.0,
                                                                                          height: 80.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Icon_designs__Give-Notice.png',
                                                                                              height: 300.0,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Communication',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Communication',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                            ),
                                                                          if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                              true)
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(EmergencyWidget.routeName);
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 80.0,
                                                                                          height: 80.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/emergency(png)_(1).png',
                                                                                              height: 300.0,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Emergency',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Emergency',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                            ),
                                                                          if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                              true)
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(InfoboardListCorkWidget.routeName);
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 90.0,
                                                                                              height: 90.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.asset(
                                                                                                  'assets/images/info_board.png',
                                                                                                  height: 300.0,
                                                                                                  fit: BoxFit.contain,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          FutureBuilder<int>(
                                                                                            future: queryInfoBoardRecordCount(
                                                                                              queryBuilder: (infoBoardRecord) => infoBoardRecord.where(
                                                                                                'unread_list',
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
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      size: 50.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              }
                                                                                              int rowCount = snapshot.data!;

                                                                                              return Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  if ((rowCount != 0) &&
                                                                                                      responsiveVisibility(
                                                                                                        context: context,
                                                                                                        tabletLandscape: false,
                                                                                                        desktop: false,
                                                                                                      ))
                                                                                                    Container(
                                                                                                      width: functions.estimateTextWidthNoti(rowCount.toString()),
                                                                                                      height: 20.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                        borderRadius: BorderRadius.circular(20.0),
                                                                                                        shape: BoxShape.rectangle,
                                                                                                        border: Border.all(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          width: 1.0,
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
                                                                                                              fontSize: 12.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                ].addToStart(SizedBox(width: 30.0)),
                                                                                              );
                                                                                            },
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Info Board',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Info Board',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                            ),
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await launchURL('https://www.letify.co.za/referralprogram');
                                                                            },
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 80.0,
                                                                                      height: 80.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Icon_designs__My-Statement.png',
                                                                                          fit: BoxFit.contain,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        tabletLandscape: false,
                                                                                        desktop: false,
                                                                                      ))
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Referrals ',
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ))
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'My Finances',
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 18.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                          if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                              true)
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(WiFIWidget.routeName);
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 80.0,
                                                                                          height: 80.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Wifi_compact.png',
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Wi-Fi',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'My Finances',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                      tabletLandscape:
                                                                          false,
                                                                    ))
                                                                      Expanded(
                                                                        child:
                                                                            GridView(
                                                                          padding:
                                                                              EdgeInsets.fromLTRB(
                                                                            0,
                                                                            20.0,
                                                                            0,
                                                                            20.0,
                                                                          ),
                                                                          gridDelegate:
                                                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                                            crossAxisCount:
                                                                                4,
                                                                            crossAxisSpacing:
                                                                                0.0,
                                                                            mainAxisSpacing:
                                                                                25.0,
                                                                            childAspectRatio:
                                                                                2.0,
                                                                          ),
                                                                          primary:
                                                                              false,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          children: [
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(StudentContractsScreeningWidget.routeName);
                                                                              },
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 90.0,
                                                                                      height: 90.0,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 90.0,
                                                                                          height: 90.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(StudentContractsScreeningWidget.routeName);
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Icon_designs___landlord.png',
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          tabletLandscape: false,
                                                                                          desktop: false,
                                                                                        ))
                                                                                          Flexible(
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: Text(
                                                                                                'My Admin',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          phone: false,
                                                                                          tablet: false,
                                                                                        ))
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'My Admin',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 18.0,
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
                                                                            if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                                true)
                                                                              AuthUserStreamWidget(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(MyHomeWidget.routeName);
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 90.0,
                                                                                        height: 90.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Icon_designs___my-house.png',
                                                                                            fit: BoxFit.contain,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              tabletLandscape: false,
                                                                                              desktop: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'My Home',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'My Home',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 18.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                              ),
                                                                            if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                                true)
                                                                              AuthUserStreamWidget(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(FixitScreenWidget.routeName);
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 90.0,
                                                                                          height: 90.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Icon_designs___fix-it.png',
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              tabletLandscape: false,
                                                                                              desktop: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Fixit',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Fix-It',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 18.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                              ),
                                                                            if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                                true)
                                                                              AuthUserStreamWidget(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(HoouseRulesWidget.routeName);
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 90.0,
                                                                                        height: 90.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/house(png).png',
                                                                                            height: 300.0,
                                                                                            fit: BoxFit.contain,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              tabletLandscape: false,
                                                                                              desktop: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'House Rules',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                            ))
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'House Rules',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 1.0)),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                                true)
                                                                              AuthUserStreamWidget(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(CommunicationHouseWidget.routeName);
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 90.0,
                                                                                        height: 90.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Icon_designs__Give-Notice.png',
                                                                                            height: 300.0,
                                                                                            fit: BoxFit.contain,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              tabletLandscape: false,
                                                                                              desktop: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Communication',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Communication',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 18.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                              ),
                                                                            if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                                true)
                                                                              AuthUserStreamWidget(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(EmergencyWidget.routeName);
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 90.0,
                                                                                          height: 90.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/emergency(png)_(1).png',
                                                                                              height: 300.0,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              tabletLandscape: false,
                                                                                              desktop: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Emergency',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Emergency',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 18.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                              ),
                                                                            if (valueOrDefault<bool>(currentUserDocument?.linkedToProperty, false) ==
                                                                                true)
                                                                              AuthUserStreamWidget(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(InfoBoardCommunicationHouseWidget.routeName);
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 90.0,
                                                                                          height: 90.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/info_board.png',
                                                                                              height: 300.0,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              tabletLandscape: false,
                                                                                              desktop: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Info Board',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                            ))
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Info Board',
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 18.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                                              ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await launchURL('https://www.letify.co.za/referralprogram');
                                                                                },
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 90.0,
                                                                                      height: 90.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Icon_designs__My-Statement.png',
                                                                                          fit: BoxFit.contain,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'My Finances',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                          ))
                                                                                            Flexible(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Referrals ',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontSize: 18.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
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
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      4.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
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
                                                                onTap:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      MessageSettingsLandlordWidget
                                                                          .routeName);
                                                                },
                                                                child: Text(
                                                                  'Settings',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        decoration:
                                                                            TextDecoration.underline,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .settings_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 24.0,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          thickness: 0.5,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                        StreamBuilder<
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
                                                                listViewBroadcastsRecordList =
                                                                snapshot.data!;

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewBroadcastsRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewBroadcastsRecord =
                                                                    listViewBroadcastsRecordList[
                                                                        listViewIndex];
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
                                                                        listViewBroadcastsRecord
                                                                            .reference,
                                                                        listViewBroadcastsRecord
                                                                            .lastMessageSentRef,
                                                                        listViewBroadcastsRecord
                                                                            .unreadMessages
                                                                            .toList(),
                                                                        currentUserReference!,
                                                                      );
                                                                      _model.intIncrement =
                                                                          0;
                                                                      _model.lstUnreadMessagesRefs =
                                                                          [];

                                                                      context
                                                                          .pushNamed(
                                                                        MessageUniversalNewCopyWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'broadcastID':
                                                                              serializeParam(
                                                                            listViewBroadcastsRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                          'broadcastName':
                                                                              serializeParam(
                                                                            listViewBroadcastsRecord.broadcastName,
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
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          if (listViewBroadcastsRecord.recipients.length > 2)
                                                                                            Text(
                                                                                              listViewBroadcastsRecord.broadcastName,
                                                                                              textAlign: TextAlign.start,
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          StreamBuilder<UserRecord>(
                                                                                            stream: UserRecord.getDocument(functions.getOtherUserRef(listViewBroadcastsRecord.recipients.toList(), currentUserReference)!),
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
                                                                                                  if ((listViewBroadcastsRecord.recipients.length <= 2) && (listViewBroadcastsRecord.recipients.length > 1))
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
                                                                                          StreamBuilder<UserRecord>(
                                                                                            stream: UserRecord.getDocument(listViewBroadcastsRecord.lastMessageOwner!),
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
                                                                                                        stream: BroadcastMessagesRecord.getDocument(listViewBroadcastsRecord.lastMessageSentRef!),
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
                                                                                                                            listViewBroadcastsRecord.lastMessage,
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
                                                                                                                            listViewBroadcastsRecord.lastMessage,
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
                                                                                                                      listViewBroadcastsRecord.lastMessage.maybeHandleOverflow(
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
                                                                                                                functions.formatMessageDateTimeDetailed(listViewBroadcastsRecord.lastMessageTime!),
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
                                                                                    if (listViewBroadcastsRecord.unreadUsers.contains(currentUserReference) == true)
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
                                                        Divider(
                                                          thickness: 0.5,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: FutureBuilder<int>(
                                                future:
                                                    queryBroadcastsRecordCount(
                                                  queryBuilder:
                                                      (broadcastsRecord) =>
                                                          broadcastsRecord
                                                              .where(
                                                    'unread_users',
                                                    arrayContains:
                                                        currentUserReference,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  int rowCount = snapshot.data!;

                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      if (rowCount != 0)
                                                        Container(
                                                          width: functions
                                                              .estimateTextWidthNoti(
                                                                  rowCount
                                                                      .toString()),
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              rowCount
                                                                  .toString(),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                    ].addToEnd(
                                                        SizedBox(width: 65.0)),
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
                      ],
                    ),
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
