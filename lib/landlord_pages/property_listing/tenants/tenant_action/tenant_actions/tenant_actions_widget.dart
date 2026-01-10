import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/landlord_pages/property_listing/tenants/tenant_action/archive_actions/archive_actions/archive_actions_widget.dart';
import '/landlord_pages/property_listing/tenants/tenant_action/warning_actions/warning_actions/warning_actions_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'tenant_actions_model.dart';
export 'tenant_actions_model.dart';

class TenantActionsWidget extends StatefulWidget {
  const TenantActionsWidget({
    super.key,
    required this.tenantInfo,
    this.roomID,
    required this.propertyID,
    required this.propertyName,
    required this.roomName,
    required this.isGenerated,
    required this.roomStatus,
    required this.roomIDString,
    required this.portfolioID,
    required this.propertyIDString,
    required this.portfolioName,
    required this.roomIndex,
  });

  final DocumentReference? tenantInfo;
  final DocumentReference? roomID;
  final DocumentReference? propertyID;
  final String? propertyName;
  final String? roomName;
  final bool? isGenerated;
  final String? roomStatus;
  final String? roomIDString;
  final DocumentReference? portfolioID;
  final String? propertyIDString;
  final String? portfolioName;
  final int? roomIndex;

  @override
  State<TenantActionsWidget> createState() => _TenantActionsWidgetState();
}

class _TenantActionsWidgetState extends State<TenantActionsWidget>
    with TickerProviderStateMixin {
  late TenantActionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TenantActionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
        child: Container(
          width: 600.0,
          height: 300.0,
          constraints: BoxConstraints(
            maxWidth: 1270.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x230E151B),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Color(0xFFF1F4F8),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ArchiveActionsWidget(
                                                tenantInfo: widget.tenantInfo!,
                                                propertyID: widget.propertyID!,
                                                propertyName:
                                                    widget.propertyName!,
                                                roomName: widget.roomName!,
                                                isGenerated:
                                                    widget.isGenerated!,
                                                roomStatus: widget.roomStatus!,
                                                roomIDString:
                                                    widget.roomIDString!,
                                                portfolioID:
                                                    widget.portfolioID!,
                                                propertyIDString:
                                                    widget.propertyIDString!,
                                                portfolioName:
                                                    widget.portfolioName!,
                                                roomID: widget.roomID,
                                                roomIndex: widget.roomIndex!,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    text: 'Archive',
                                    options: FFButtonOptions(
                                      width: 200.0,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: WarningActionsWidget(
                                                tenantInfo: widget.tenantInfo!,
                                                propertyID: widget.propertyID!,
                                                propertyName:
                                                    widget.propertyName!,
                                                roomName: widget.roomName!,
                                                isGenerated:
                                                    widget.isGenerated!,
                                                roomStatus: widget.roomStatus!,
                                                roomIDString:
                                                    widget.roomIDString!,
                                                portfolioID:
                                                    widget.portfolioID!,
                                                propertyIDString:
                                                    widget.propertyIDString!,
                                                portfolioName:
                                                    widget.portfolioID!.id,
                                                roomID: widget.roomID,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    text: 'Warning',
                                    options: FFButtonOptions(
                                      width: 200.0,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        RoomOccupantWidget.routeName,
                                        queryParameters: {
                                          'propertyID': serializeParam(
                                            widget.propertyID,
                                            ParamType.DocumentReference,
                                          ),
                                          'propertyName': serializeParam(
                                            widget.propertyName,
                                            ParamType.String,
                                          ),
                                          'roomID': serializeParam(
                                            widget.roomID,
                                            ParamType.DocumentReference,
                                          ),
                                          'roomName': serializeParam(
                                            widget.roomName,
                                            ParamType.String,
                                          ),
                                          'tenantInRoom': serializeParam(
                                            widget.tenantInfo,
                                            ParamType.DocumentReference,
                                          ),
                                          'isGenerated': serializeParam(
                                            widget.isGenerated,
                                            ParamType.bool,
                                          ),
                                          'roomStatus': serializeParam(
                                            widget.roomStatus,
                                            ParamType.String,
                                          ),
                                          'roomIDString': serializeParam(
                                            widget.roomIDString,
                                            ParamType.String,
                                          ),
                                          'portfolioID': serializeParam(
                                            widget.portfolioID,
                                            ParamType.DocumentReference,
                                          ),
                                          'propertyIDString': serializeParam(
                                            widget.propertyIDString,
                                            ParamType.String,
                                          ),
                                          'portfolioName': serializeParam(
                                            widget.portfolioName,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'View Tenant',
                                    options: FFButtonOptions(
                                      width: 200.0,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Close',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(22.0),
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
