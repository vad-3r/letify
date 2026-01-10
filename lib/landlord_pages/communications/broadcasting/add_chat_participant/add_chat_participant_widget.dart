import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'add_chat_participant_model.dart';
export 'add_chat_participant_model.dart';

/// a component that displays a vertical list of options ("New Group", "New
/// Broadcast", "Private Chat") when triggered.
///
/// Mimic WhatsApp’s minimalist menu design
class AddChatParticipantWidget extends StatefulWidget {
  const AddChatParticipantWidget({
    super.key,
    required this.broadcastID,
    required this.broadcastName,
  });

  final DocumentReference? broadcastID;
  final String? broadcastName;

  @override
  State<AddChatParticipantWidget> createState() =>
      _AddChatParticipantWidgetState();
}

class _AddChatParticipantWidgetState extends State<AddChatParticipantWidget> {
  late AddChatParticipantModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddChatParticipantModel());

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
          width: 300.0,
          height: 200.0,
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
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
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          AddEmployeeWidget.routeName,
                          queryParameters: {
                            'broadcastID': serializeParam(
                              widget.broadcastID,
                              ParamType.DocumentReference,
                            ),
                            'broadcastName': serializeParam(
                              widget.broadcastName,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.group_add,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 20.0,
                              ),
                              Text(
                                'Add Employee',
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
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          AddPropertyToGroupWidget.routeName,
                          queryParameters: {
                            'broadcastID': serializeParam(
                              widget.broadcastID,
                              ParamType.DocumentReference,
                            ),
                            'broadcastName': serializeParam(
                              widget.broadcastName,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.group_add,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 20.0,
                              ),
                              Text(
                                'Add Property',
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
              ].addToEnd(SizedBox(height: 42.0)),
            ),
          ),
        ),
      ),
    );
  }
}
