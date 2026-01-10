import '/agent_pages/agent_details/agent_details_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/landlord_pages/landlord_details_input/landlord_details_input_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'landing_page_model.dart';
export 'landing_page_model.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({super.key});

  static String routeName = 'Landing_Page';
  static String routePath = '/landingPage';

  @override
  State<LandingPageWidget> createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  late LandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.userRole, '') == 'Student') {
        if (valueOrDefault<bool>(
                currentUserDocument?.completedScreening, false) ==
            false) {
          context.pushNamed(StudentScreeningWidget.routeName);
        } else {
          context.goNamed(StudentDashboard1Widget.routeName);
        }
      } else if (valueOrDefault(currentUserDocument?.userRole, '') ==
          'Property Owner') {
        if (valueOrDefault<bool>(currentUserDocument?.ownerScreening, false) ==
            false) {
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
                    child: LandlordDetailsInputWidget(),
                  ),
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        } else {
          context.goNamed(DashboardLandlordWidget.routeName);
        }
      } else if (valueOrDefault(currentUserDocument?.userRole, '') ==
          'Employee') {
        if (valueOrDefault<bool>(currentUserDocument?.agentScreen, false) ==
            false) {
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
                    child: AgentDetailsWidget(),
                  ),
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        } else {
          context.pushNamed(EmployeeDashboardWidget.routeName);
        }
      } else if (valueOrDefault(currentUserDocument?.userRole, '') == 'Agent') {
        if (valueOrDefault<bool>(currentUserDocument?.ownerScreening, false) ==
            false) {
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
                    child: LandlordDetailsInputWidget(),
                  ),
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        } else {
          context.goNamed(DashboardLandlordWidget.routeName);
        }
      }
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
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 20.0, 6.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
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
