import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/landlord_pages/communications/broadcasting/more_chat_options/more_chat_options_widget.dart';
import '/landlord_pages/communications/broadcasting/share_optionss/share_optionss_widget.dart';
import '/landlord_pages/communications/broadcasting/user_message_options/user_message_options_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'message_universal_new_copy_model.dart';
export 'message_universal_new_copy_model.dart';

/// create a chat screen where it shows my messages and the other user's
/// message.
///
/// My message on the right hand side and the other user message on the left
/// hand side
class MessageUniversalNewCopyWidget extends StatefulWidget {
  const MessageUniversalNewCopyWidget({
    super.key,
    required this.broadcastID,
    required this.broadcastName,
  });

  final DocumentReference? broadcastID;
  final String? broadcastName;

  static String routeName = 'Message_Universal_NewCopy';
  static String routePath = '/messageUniversalNewCopy';

  @override
  State<MessageUniversalNewCopyWidget> createState() =>
      _MessageUniversalNewCopyWidgetState();
}

class _MessageUniversalNewCopyWidgetState
    extends State<MessageUniversalNewCopyWidget> {
  late MessageUniversalNewCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageUniversalNewCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.startPageLocationTimer();
      _model.user = null;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: Color(0xFFE8F0F8),
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
          title: FutureBuilder<BroadcastsRecord>(
            future: BroadcastsRecord.getDocumentOnce(widget.broadcastID!),
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

              final columnBroadcastsRecord = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (columnBroadcastsRecord.groupType != '')
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (columnBroadcastsRecord.groupType == 'Management') {
                          if (columnBroadcastsRecord.senderId ==
                              currentUserReference) {
                            context.pushNamed(
                              ChatDetailsCopyWidget.routeName,
                              queryParameters: {
                                'broadcastID': serializeParam(
                                  widget.broadcastID,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Broadcast Feature'),
                                    content: Text(
                                        'You cannot view group participants'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }
                        } else {
                          context.pushNamed(
                            ChatDetailsCopyWidget.routeName,
                            queryParameters: {
                              'broadcastID': serializeParam(
                                widget.broadcastID,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      child: Container(
                        width: 200.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.broadcastName,
                                      'name',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (columnBroadcastsRecord.groupType == '')
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (columnBroadcastsRecord.groupType == 'Management') {
                          if (columnBroadcastsRecord.senderId ==
                              currentUserReference) {
                            context.pushNamed(
                              ChatDetailsCopyWidget.routeName,
                              queryParameters: {
                                'broadcastID': serializeParam(
                                  widget.broadcastID,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Broadcast Feature'),
                                    content: Text(
                                        'You cannot view group participants'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }
                        } else {
                          context.pushNamed(
                            ChatDetailsCopyWidget.routeName,
                            queryParameters: {
                              'broadcastID': serializeParam(
                                widget.broadcastID,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      child: Container(
                        width: 200.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (columnBroadcastsRecord.recipients.length >
                                    2)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        widget.broadcastName,
                                        'name',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineMediumIsCustom,
                                          ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  if ((columnBroadcastsRecord.groupType == '') &&
                      (columnBroadcastsRecord.recipients.length <= 2))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (columnBroadcastsRecord.groupType == 'Management') {
                          if (columnBroadcastsRecord.senderId ==
                              currentUserReference) {
                            context.pushNamed(
                              ChatDetailsCopyWidget.routeName,
                              queryParameters: {
                                'broadcastID': serializeParam(
                                  widget.broadcastID,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Broadcast Feature'),
                                    content: Text(
                                        'You cannot view group participants'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }
                        } else {
                          context.pushNamed(
                            ChatDetailsCopyWidget.routeName,
                            queryParameters: {
                              'broadcastID': serializeParam(
                                widget.broadcastID,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      child: Container(
                        width: 200.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.broadcastName,
                                      'name',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<BroadcastsRecord>(
            future: BroadcastsRecord.getDocumentOnce(widget.broadcastID!),
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

              final columnBroadcastsRecord = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 0.0),
                        child: StreamBuilder<List<BroadcastMessagesRecord>>(
                          stream: queryBroadcastMessagesRecord(
                            parent: widget.broadcastID,
                            queryBuilder: (broadcastMessagesRecord) =>
                                broadcastMessagesRecord
                                    .where(
                                      'broadcast_id',
                                      isEqualTo: widget.broadcastID,
                                    )
                                    .orderBy('timestamp', descending: true),
                            limit: 15,
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
                            List<BroadcastMessagesRecord>
                                listViewBroadcastMessagesRecordList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              reverse: true,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount:
                                  listViewBroadcastMessagesRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewBroadcastMessagesRecord =
                                    listViewBroadcastMessagesRecordList[
                                        listViewIndex];
                                return Builder(
                                  builder: (context) {
                                    if (listViewBroadcastMessagesRecord
                                            .sender ==
                                        currentUserReference) {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onLongPress: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                MoreChatOptionsWidget(
                                                              userRef:
                                                                  listViewBroadcastMessagesRecord
                                                                      .sender!,
                                                              textMessage:
                                                                  listViewBroadcastMessagesRecord
                                                                      .message,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Container(
                                                  width: () {
                                                    if (listViewBroadcastMessagesRecord
                                                                .file !=
                                                            '') {
                                                      return 250.0;
                                                    } else if (listViewBroadcastMessagesRecord
                                                                .pdf !=
                                                            '') {
                                                      return 250.0;
                                                    } else {
                                                      return functions
                                                          .estimateTextWidth(
                                                              listViewBroadcastMessagesRecord
                                                                  .message);
                                                    }
                                                  }(),
                                                  constraints: BoxConstraints(
                                                    maxWidth: 250.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(12.0),
                                                      topRight:
                                                          Radius.circular(12.0),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (listViewBroadcastMessagesRecord
                                                                  .replyText !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  6.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF3877C1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        6.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        6.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        6.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        6.0),
                                                              ),
                                                            ),
                                                            child:
                                                                StreamBuilder<
                                                                    UserRecord>(
                                                              stream: UserRecord
                                                                  .getDocument(
                                                                      listViewBroadcastMessagesRecord
                                                                          .userReplied!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitRipple(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }

                                                                final rowUserRecord =
                                                                    snapshot
                                                                        .data!;

                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          4.0,
                                                                      height: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(6.0),
                                                                          bottomRight:
                                                                              Radius.circular(0.0),
                                                                          topLeft:
                                                                              Radius.circular(6.0),
                                                                          topRight:
                                                                              Radius.circular(0.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          6.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 8.0),
                                                                              child: RichText(
                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: '~',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        fontSize: 14.0,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: rowUserRecord.displayName,
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        fontSize: 14.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              listViewBroadcastMessagesRecord.replyText.maybeHandleOverflow(
                                                                                maxChars: 15,
                                                                                replacement: '…',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      if (listViewBroadcastMessagesRecord
                                                              .currentLocation !=
                                                          null)
                                                        Container(
                                                          width: 250.0,
                                                          height: 250.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Stack(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 1.0),
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        250.0,
                                                                    height:
                                                                        250.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    child:
                                                                        FlutterFlowStaticMap(
                                                                      location:
                                                                          listViewBroadcastMessagesRecord
                                                                              .currentLocation!,
                                                                      apiKey:
                                                                          'pk.eyJ1IjoidmFkZXI0NTQ1NCIsImEiOiJjbWF6Y21xd2gwOHBlMmtyMDRxMGFhZjBpIn0.FR6h9BldOWYHgeSbsTe2yQ',
                                                                      style: mapbox
                                                                          .MapBoxStyle
                                                                          .Streets,
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          300.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(0.0),
                                                                        bottomRight:
                                                                            Radius.circular(0.0),
                                                                        topLeft:
                                                                            Radius.circular(0.0),
                                                                        topRight:
                                                                            Radius.circular(0.0),
                                                                      ),
                                                                      markerColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      zoom: 12,
                                                                      tilt: 0,
                                                                      rotation:
                                                                          0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
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
                                                                      context
                                                                          .pushNamed(
                                                                        LiveLocationUserCopyWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'userID':
                                                                              serializeParam(
                                                                            listViewBroadcastMessagesRecord.sender,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                          'broadcastID':
                                                                              serializeParam(
                                                                            listViewBroadcastMessagesRecord.broadcastId,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                          'broadcastMessage':
                                                                              serializeParam(
                                                                            listViewBroadcastMessagesRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          250.0,
                                                                      height:
                                                                          42.55,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0x7F0B57B1),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0.0),
                                                                          bottomRight:
                                                                              Radius.circular(0.0),
                                                                          topLeft:
                                                                              Radius.circular(20.0),
                                                                          topRight:
                                                                              Radius.circular(20.0),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Expand Map',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      if (listViewBroadcastMessagesRecord
                                                                  .file !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
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
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                PageTransition(
                                                                  type:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  child:
                                                                      FlutterFlowExpandedImageView(
                                                                    image:
                                                                        CachedNetworkImage(
                                                                      fadeInDuration:
                                                                          Duration(
                                                                              milliseconds: 500),
                                                                      fadeOutDuration:
                                                                          Duration(
                                                                              milliseconds: 500),
                                                                      imageUrl:
                                                                          listViewBroadcastMessagesRecord
                                                                              .file,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                      errorWidget: (context,
                                                                              error,
                                                                              stackTrace) =>
                                                                          Image
                                                                              .asset(
                                                                        'assets/images/error_image.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                    allowRotation:
                                                                        false,
                                                                    tag: listViewBroadcastMessagesRecord
                                                                        .file,
                                                                    useHeroAnimation:
                                                                        true,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Hero(
                                                              tag:
                                                                  listViewBroadcastMessagesRecord
                                                                      .file,
                                                              transitionOnUserGestures:
                                                                  true,
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                child:
                                                                    CachedNetworkImage(
                                                                  fadeInDuration:
                                                                      Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  fadeOutDuration:
                                                                      Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  imageUrl:
                                                                      listViewBroadcastMessagesRecord
                                                                          .file,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                  errorWidget: (context,
                                                                          error,
                                                                          stackTrace) =>
                                                                      Image
                                                                          .asset(
                                                                    'assets/images/error_image.png',
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (listViewBroadcastMessagesRecord
                                                                  .pdf !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  6.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF3877C1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6.0),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 4.0,
                                                                    height: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(6.0),
                                                                        bottomRight:
                                                                            Radius.circular(0.0),
                                                                        topLeft:
                                                                            Radius.circular(6.0),
                                                                        topRight:
                                                                            Radius.circular(0.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Download PDF',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          await downloadFile(
                                                                            filename:
                                                                                'Letify PDF',
                                                                            url:
                                                                                listViewBroadcastMessagesRecord.pdf,
                                                                          );
                                                                        },
                                                                        text:
                                                                            '',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .download_rounded,
                                                                          size:
                                                                              15.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          iconAlignment:
                                                                              IconAlignment.start,
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(20.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      if (listViewBroadcastMessagesRecord
                                                              .currentLocation !=
                                                          null)
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              LiveLocationUserCopyWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'userID':
                                                                    serializeParam(
                                                                  listViewBroadcastMessagesRecord
                                                                      .sender,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'broadcastID':
                                                                    serializeParam(
                                                                  listViewBroadcastMessagesRecord
                                                                      .broadcastId,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'broadcastMessage':
                                                                    serializeParam(
                                                                  listViewBroadcastMessagesRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (listViewBroadcastMessagesRecord
                                                                      .trackingActive ==
                                                                  false)
                                                                Text(
                                                                  'Start Sharing Live Location',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              if (listViewBroadcastMessagesRecord
                                                                      .trackingActive ==
                                                                  true)
                                                                Text(
                                                                  'Stop Sharing Live Location',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (listViewBroadcastMessagesRecord
                                                              .currentLocation ==
                                                          null)
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        6.0,
                                                                        6.0,
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
                                                                await Clipboard.setData(
                                                                    ClipboardData(
                                                                        text: listViewBroadcastMessagesRecord
                                                                            .message));
                                                              },
                                                              child: Text(
                                                                listViewBroadcastMessagesRecord
                                                                    .message,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          6.0,
                                                                          6.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions.formatMessageDateTimeDetailed(
                                                                      listViewBroadcastMessagesRecord
                                                                          .timestamp!),
                                                                  'time',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelSmallIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          if ((listViewBroadcastMessagesRecord
                                                                      .unreadUserList
                                                                      .length ==
                                                                  0) &&
                                                              (columnBroadcastsRecord
                                                                      .unreadMessages
                                                                      .contains(
                                                                          listViewBroadcastMessagesRecord
                                                                              .reference) ==
                                                                  false))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/tick_(1).png',
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          if (((listViewBroadcastMessagesRecord
                                                                          .unreadUserList
                                                                          .length !=
                                                                      0) &&
                                                                  (columnBroadcastsRecord
                                                                          .unreadMessages
                                                                          .contains(listViewBroadcastMessagesRecord
                                                                              .reference) ==
                                                                      true)) ||
                                                              ((listViewBroadcastMessagesRecord
                                                                      .unreadUserList
                                                                      .isNotEmpty) ==
                                                                  true))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/tick_(2).png',
                                                                    width:
                                                                        200.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 8.0),
                                          child: StreamBuilder<UserRecord>(
                                            stream: UserRecord.getDocument(
                                                listViewBroadcastMessagesRecord
                                                    .sender!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }

                                              final otherUsersUserRecord =
                                                  snapshot.data!;

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GestureDetector(
                                                    onLongPress: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    MoreChatOptionsWidget(
                                                                  userRef:
                                                                      listViewBroadcastMessagesRecord
                                                                          .sender!,
                                                                  textMessage:
                                                                      listViewBroadcastMessagesRecord
                                                                          .message,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    onHorizontalDragEnd:
                                                        (details) async {
                                                      _model.user =
                                                          listViewBroadcastMessagesRecord
                                                              .sender;
                                                      _model.replyText =
                                                          listViewBroadcastMessagesRecord
                                                              .message;
                                                      safeSetState(() {});
                                                      await actions.debugPrint(
                                                        _model.user!.id,
                                                      );
                                                      await actions.smallDelay(
                                                        100,
                                                      );
                                                      HapticFeedback
                                                          .mediumImpact();
                                                    },
                                                    child: Container(
                                                      width: () {
                                                        if (listViewBroadcastMessagesRecord
                                                                    .file !=
                                                                '') {
                                                          return 250.0;
                                                        } else if (listViewBroadcastMessagesRecord
                                                                    .pdf !=
                                                                '') {
                                                          return 250.0;
                                                        } else {
                                                          return functions
                                                              .estimateTextWidth(
                                                                  listViewBroadcastMessagesRecord
                                                                      .message);
                                                        }
                                                      }(),
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 250.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(6.0),
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
                                                                  if (columnBroadcastsRecord
                                                                          .blockedFromOtherUsers
                                                                          .contains(
                                                                              currentUserReference) ==
                                                                      true) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                Text('Admin Settings'),
                                                                            content:
                                                                                Text('You cannot perform this action'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  } else {
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
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: UserMessageOptionsWidget(
                                                                                broadcastID: widget.broadcastID!,
                                                                                userRef: otherUsersUserRecord.reference,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  }
                                                                },
                                                                child: Text(
                                                                  otherUsersUserRecord
                                                                      .displayName,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          if (listViewBroadcastMessagesRecord
                                                                      .replyText !=
                                                                  '')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          6.0,
                                                                          6.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 60.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF62B3DF),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            6.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            6.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            6.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            6.0),
                                                                  ),
                                                                ),
                                                                child: StreamBuilder<
                                                                    UserRecord>(
                                                                  stream: UserRecord
                                                                      .getDocument(
                                                                          listViewBroadcastMessagesRecord
                                                                              .userReplied!),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              SpinKitRipple(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                50.0,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }

                                                                    final rowUserRecord =
                                                                        snapshot
                                                                            .data!;

                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              4.0,
                                                                          height:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(6.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(6.0),
                                                                              topRight: Radius.circular(0.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              6.0,
                                                                              0.0,
                                                                              6.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 8.0),
                                                                                  child: RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: '~',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                            fontSize: 14.0,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: rowUserRecord.displayName,
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                            fontSize: 14.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                    textAlign: TextAlign.center,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  listViewBroadcastMessagesRecord.replyText.maybeHandleOverflow(
                                                                                    maxChars: 15,
                                                                                    replacement: '…',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          if (listViewBroadcastMessagesRecord
                                                                  .currentLocation !=
                                                              null)
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          6.0,
                                                                          6.0),
                                                              child: Container(
                                                                width: 250.0,
                                                                height: 250.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Stack(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          250.0,
                                                                      height:
                                                                          250.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          FlutterFlowStaticMap(
                                                                        location:
                                                                            listViewBroadcastMessagesRecord.currentLocation!,
                                                                        apiKey:
                                                                            'pk.eyJ1IjoidmFkZXI0NTQ1NCIsImEiOiJjbWF6Y21xd2gwOHBlMmtyMDRxMGFhZjBpIn0.FR6h9BldOWYHgeSbsTe2yQ',
                                                                        style: mapbox
                                                                            .MapBoxStyle
                                                                            .Streets,
                                                                        width:
                                                                            300.0,
                                                                        height:
                                                                            300.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0.0),
                                                                          bottomRight:
                                                                              Radius.circular(0.0),
                                                                          topLeft:
                                                                              Radius.circular(0.0),
                                                                          topRight:
                                                                              Radius.circular(0.0),
                                                                        ),
                                                                        markerColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        zoom:
                                                                            12,
                                                                        tilt: 0,
                                                                        rotation:
                                                                            0,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              1.0),
                                                                      child:
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
                                                                          context
                                                                              .pushNamed(
                                                                            LiveLocationOtherUserWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'userID': serializeParam(
                                                                                listViewBroadcastMessagesRecord.sender,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                              'broadcastID': serializeParam(
                                                                                widget.broadcastID,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                              'broadcastMessage': serializeParam(
                                                                                listViewBroadcastMessagesRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              250.0,
                                                                          height:
                                                                              42.5,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0x7F0B57B1),
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(0.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(20.0),
                                                                              topRight: Radius.circular(20.0),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Expand Map',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          if (listViewBroadcastMessagesRecord
                                                                      .pdf !=
                                                                  '')
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Visibility(
                                                                visible: listViewBroadcastMessagesRecord
                                                                            .pdf !=
                                                                        '',
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFF62B3DF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                4.0,
                                                                            height:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(6.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(6.0),
                                                                                topRight: Radius.circular(0.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Download PDF',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  await downloadFile(
                                                                                    filename: 'Letify PDF',
                                                                                    url: listViewBroadcastMessagesRecord.pdf,
                                                                                  );
                                                                                },
                                                                                text: '',
                                                                                icon: Icon(
                                                                                  Icons.download_rounded,
                                                                                  size: 15.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 40.0,
                                                                                  height: 40.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 16.0, 0.0),
                                                                                  iconAlignment: IconAlignment.start,
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(20.0),
                                                                                ),
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
                                                          if (listViewBroadcastMessagesRecord
                                                                      .file !=
                                                                  '')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
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
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image:
                                                                            CachedNetworkImage(
                                                                          fadeInDuration:
                                                                              Duration(milliseconds: 500),
                                                                          fadeOutDuration:
                                                                              Duration(milliseconds: 500),
                                                                          imageUrl:
                                                                              listViewBroadcastMessagesRecord.file,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                          errorWidget: (context, error, stackTrace) =>
                                                                              Image.asset(
                                                                            'assets/images/error_image.png',
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        allowRotation:
                                                                            true,
                                                                        tag: listViewBroadcastMessagesRecord
                                                                            .file,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                onLongPress:
                                                                    () async {
                                                                  await downloadFile(
                                                                    filename:
                                                                        'image',
                                                                    url: listViewBroadcastMessagesRecord
                                                                        .fileURL,
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      listViewBroadcastMessagesRecord
                                                                          .file,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    child:
                                                                        CachedNetworkImage(
                                                                      fadeInDuration:
                                                                          Duration(
                                                                              milliseconds: 500),
                                                                      fadeOutDuration:
                                                                          Duration(
                                                                              milliseconds: 500),
                                                                      imageUrl:
                                                                          listViewBroadcastMessagesRecord
                                                                              .file,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      errorWidget: (context,
                                                                              error,
                                                                              stackTrace) =>
                                                                          Image
                                                                              .asset(
                                                                        'assets/images/error_image.png',
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          if (listViewBroadcastMessagesRecord
                                                                  .currentLocation !=
                                                              null)
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                if (listViewBroadcastMessagesRecord
                                                                        .trackingActive ==
                                                                    true)
                                                                  Text(
                                                                    'Sharing live location',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                              ],
                                                            ),
                                                          if (listViewBroadcastMessagesRecord
                                                                  .currentLocation ==
                                                              null)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            6.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                    await Clipboard.setData(
                                                                        ClipboardData(
                                                                            text:
                                                                                listViewBroadcastMessagesRecord.message));
                                                                  },
                                                                  child: Text(
                                                                    listViewBroadcastMessagesRecord
                                                                        .message,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          6.0,
                                                                          6.0,
                                                                          6.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions.formatMessageDateTimeDetailed(
                                                                      listViewBroadcastMessagesRecord
                                                                          .timestamp!),
                                                                  'time',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelSmallIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              );
                                            },
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (columnBroadcastsRecord.mutedUsers
                              .contains(currentUserReference) ==
                          false)
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (_model.user != null)
                                        Container(
                                          width: double.infinity,
                                          height: 70.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(6.0),
                                              bottomRight: Radius.circular(6.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                          ),
                                          child: StreamBuilder<UserRecord>(
                                            stream: UserRecord.getDocument(
                                                _model.user!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitRipple(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }

                                              final rowUserRecord =
                                                  snapshot.data!;

                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 6.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '~',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: rowUserRecord
                                                                        .displayName,
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              _model.replyText,
                                                              'Image',
                                                            ).maybeHandleOverflow(
                                                              maxChars: 15,
                                                              replacement: '…',
                                                            ),
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
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.user = null;
                                                            _model.replyText =
                                                                null;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.cancel,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (columnBroadcastsRecord
                                                    .groupType ==
                                                'Management') {
                                              if (columnBroadcastsRecord
                                                      .senderId ==
                                                  currentUserReference) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              ShareOptionssWidget(
                                                            broadcastID: widget
                                                                .broadcastID!,
                                                            recipients:
                                                                columnBroadcastsRecord
                                                                    .recipients,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: Text(
                                                            'Broadcast Feature'),
                                                        content: Text(
                                                            'Unfortunately, you cannot send messages in this groupchat '),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            ShareOptionssWidget(
                                                          broadcastID: widget
                                                              .broadcastID!,
                                                          recipients:
                                                              columnBroadcastsRecord
                                                                  .recipients,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            }
                                          },
                                          child: Container(
                                            width: 40.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.attach_file,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController',
                                              Duration(milliseconds: 2000),
                                              () async {
                                                if (columnBroadcastsRecord
                                                        .groupType ==
                                                    'Management') {
                                                  if (columnBroadcastsRecord
                                                          .senderId !=
                                                      currentUserReference) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return WebViewAware(
                                                          child: AlertDialog(
                                                            title: Text(
                                                                'Broadcast Feature'),
                                                            content: Text(
                                                                'You cannot send messages in this groupchat'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                    safeSetState(() {
                                                      _model.textController
                                                          ?.clear();
                                                    });
                                                  }
                                                }
                                              },
                                            ),
                                            autofocus: false,
                                            textCapitalization:
                                                TextCapitalization.sentences,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Type a message...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
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
                                            maxLines: null,
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                            inputFormatters: [
                                              if (!isAndroid && !isiOS)
                                                TextInputFormatter.withFunction(
                                                    (oldValue, newValue) {
                                                  return TextEditingValue(
                                                    selection:
                                                        newValue.selection,
                                                    text: newValue.text
                                                        .toCapitalization(
                                                            TextCapitalization
                                                                .sentences),
                                                  );
                                                }),
                                            ],
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderRadius: 22.0,
                                          buttonSize: 44.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          icon: Icon(
                                            Icons.send_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            if (columnBroadcastsRecord
                                                    .groupType ==
                                                'Management') {
                                              if (columnBroadcastsRecord
                                                      .senderId !=
                                                  currentUserReference) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: Text(
                                                            'Broadcast Feature'),
                                                        content: Text(
                                                            'You cannot send messages in this grouchat'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              if (!(_model.textController.text ==
                                                      '')) {
                                                if (_model.replyText != null &&
                                                    _model.replyText != '') {
                                                  var broadcastMessagesRecordReference1 =
                                                      BroadcastMessagesRecord
                                                          .createDoc(widget
                                                              .broadcastID!);
                                                  await broadcastMessagesRecordReference1
                                                      .set({
                                                    ...createBroadcastMessagesRecordData(
                                                      broadcastId:
                                                          widget.broadcastID,
                                                      sender:
                                                          currentUserReference,
                                                      message: _model
                                                          .textController.text,
                                                      timestamp:
                                                          getCurrentTimestamp,
                                                      replyText:
                                                          _model.replyText,
                                                      userReplied: _model.user,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_user_list':
                                                            columnBroadcastsRecord
                                                                .recipients,
                                                      },
                                                    ),
                                                  });
                                                  _model.message1 =
                                                      BroadcastMessagesRecord
                                                          .getDocumentFromData({
                                                    ...createBroadcastMessagesRecordData(
                                                      broadcastId:
                                                          widget.broadcastID,
                                                      sender:
                                                          currentUserReference,
                                                      message: _model
                                                          .textController.text,
                                                      timestamp:
                                                          getCurrentTimestamp,
                                                      replyText:
                                                          _model.replyText,
                                                      userReplied: _model.user,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_user_list':
                                                            columnBroadcastsRecord
                                                                .recipients,
                                                      },
                                                    ),
                                                  }, broadcastMessagesRecordReference1);

                                                  await _model
                                                      .message1!.reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_user_list':
                                                            FieldValue
                                                                .arrayRemove([
                                                          currentUserReference
                                                        ]),
                                                      },
                                                    ),
                                                  });

                                                  await widget.broadcastID!
                                                      .update({
                                                    ...createBroadcastsRecordData(
                                                      lastMessage: _model
                                                          .textController.text,
                                                      lastMessageTime:
                                                          getCurrentTimestamp,
                                                      lastMessageOwner:
                                                          currentUserReference,
                                                      lastMessageSentRef: _model
                                                          .message1?.reference,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_users':
                                                            columnBroadcastsRecord
                                                                .recipients,
                                                      },
                                                    ),
                                                  });

                                                  await widget.broadcastID!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_users':
                                                            FieldValue
                                                                .arrayRemove([
                                                          currentUserReference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  _model.notifiedRefs1 =
                                                      await actions
                                                          .filterUsersToNotify(
                                                    functions
                                                        .getOtherUserRefs(
                                                            columnBroadcastsRecord
                                                                .recipients
                                                                .toList(),
                                                            currentUserReference)!
                                                        .toList(),
                                                  );

                                                  await widget.broadcastID!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_messages':
                                                            FieldValue
                                                                .arrayUnion([
                                                          _model.message1
                                                              ?.reference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        functions.nameConcat(
                                                            currentUserDisplayName,
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.userSurname,
                                                                ''))!,
                                                    notificationText: _model
                                                        .textController.text,
                                                    notificationSound:
                                                        'default',
                                                    userRefs: _model
                                                        .notifiedRefs1!
                                                        .toList(),
                                                    initialPageName:
                                                        'Landing_Page',
                                                    parameterData: {},
                                                  );
                                                  safeSetState(() {
                                                    _model.textController
                                                        ?.clear();
                                                  });
                                                } else {
                                                  var broadcastMessagesRecordReference2 =
                                                      BroadcastMessagesRecord
                                                          .createDoc(widget
                                                              .broadcastID!);
                                                  await broadcastMessagesRecordReference2
                                                      .set({
                                                    ...createBroadcastMessagesRecordData(
                                                      broadcastId:
                                                          widget.broadcastID,
                                                      sender:
                                                          currentUserReference,
                                                      message: _model
                                                          .textController.text,
                                                      timestamp:
                                                          getCurrentTimestamp,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_user_list':
                                                            columnBroadcastsRecord
                                                                .recipients,
                                                      },
                                                    ),
                                                  });
                                                  _model.message =
                                                      BroadcastMessagesRecord
                                                          .getDocumentFromData({
                                                    ...createBroadcastMessagesRecordData(
                                                      broadcastId:
                                                          widget.broadcastID,
                                                      sender:
                                                          currentUserReference,
                                                      message: _model
                                                          .textController.text,
                                                      timestamp:
                                                          getCurrentTimestamp,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_user_list':
                                                            columnBroadcastsRecord
                                                                .recipients,
                                                      },
                                                    ),
                                                  }, broadcastMessagesRecordReference2);

                                                  await _model
                                                      .message!.reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_user_list':
                                                            FieldValue
                                                                .arrayRemove([
                                                          currentUserReference
                                                        ]),
                                                      },
                                                    ),
                                                  });

                                                  await widget.broadcastID!
                                                      .update({
                                                    ...createBroadcastsRecordData(
                                                      lastMessage: _model
                                                          .textController.text,
                                                      lastMessageTime:
                                                          getCurrentTimestamp,
                                                      lastMessageOwner:
                                                          currentUserReference,
                                                      lastMessageSentRef: _model
                                                          .message?.reference,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_users':
                                                            columnBroadcastsRecord
                                                                .recipients,
                                                      },
                                                    ),
                                                  });

                                                  await widget.broadcastID!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_users':
                                                            FieldValue
                                                                .arrayRemove([
                                                          currentUserReference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  _model.notifiedRefs =
                                                      await actions
                                                          .filterUsersToNotify(
                                                    functions
                                                        .getOtherUserRefs(
                                                            columnBroadcastsRecord
                                                                .recipients
                                                                .toList(),
                                                            currentUserReference)!
                                                        .toList(),
                                                  );

                                                  await widget.broadcastID!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'unread_messages':
                                                            FieldValue
                                                                .arrayUnion([
                                                          _model.message
                                                              ?.reference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        functions.nameConcat(
                                                            currentUserDisplayName,
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.userSurname,
                                                                ''))!,
                                                    notificationText: _model
                                                        .textController.text,
                                                    notificationSound:
                                                        'default',
                                                    userRefs: _model
                                                        .notifiedRefs!
                                                        .toList(),
                                                    initialPageName:
                                                        'Landing_Page',
                                                    parameterData: {},
                                                  );
                                                  safeSetState(() {
                                                    _model.textController
                                                        ?.clear();
                                                  });
                                                }
                                              }
                                            }

                                            safeSetState(() {});
                                          },
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      if (columnBroadcastsRecord.mutedUsers
                              .contains(currentUserReference) ==
                          true)
                        Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'You cannot reply in this group',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
