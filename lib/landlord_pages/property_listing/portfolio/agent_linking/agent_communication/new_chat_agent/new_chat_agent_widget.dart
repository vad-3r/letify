import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/landlord_pages/property_listing/portfolio/agent_linking/prohibit/prohibit_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'new_chat_agent_model.dart';
export 'new_chat_agent_model.dart';

/// a component that displays a vertical list of options ("New Group", "New
/// Broadcast", "Private Chat") when triggered.
///
/// Mimic WhatsApp’s minimalist menu design
class NewChatAgentWidget extends StatefulWidget {
  const NewChatAgentWidget({super.key});

  @override
  State<NewChatAgentWidget> createState() => _NewChatAgentWidgetState();
}

class _NewChatAgentWidgetState extends State<NewChatAgentWidget> {
  late NewChatAgentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewChatAgentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: 259.9,
          height: 209.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: Color(0xFFDDDFE3),
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((currentUserDocument?.permissions.toList() ??
                                        [])
                                    .contains(
                                        functions.aString('Create Groups')) ==
                                true) {
                              context.pushNamed(
                                  PropertiesForHouseGroupAgentWidget.routeName);
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ProhibitWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.group_add,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 20.0,
                              ),
                              Text(
                                'New Group',
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
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((currentUserDocument?.permissions.toList() ??
                                        [])
                                    .contains(
                                        functions.aString('Create Groups')) ==
                                true) {
                              context.pushNamed(
                                  PropertiesForMulitHouseGroupAgentWidget
                                      .routeName);
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ProhibitWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.group_add,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 20.0,
                              ),
                              Text(
                                'New Group (Multi-House)',
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
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Container(
                        width: double.infinity,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Visibility(
                          visible: responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.settings,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                Text(
                                  'Settings',
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
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ),
                        ),
                      ),
                  ].addToStart(SizedBox(height: 10.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
