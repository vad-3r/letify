import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'user_message_options_model.dart';
export 'user_message_options_model.dart';

/// A popup menu that appears when clicking a user icon in a group chat.
///
/// It overlays the screen and shows options like "Message Privately" and
/// "Remove from Group". The popup is dismissible by tapping outside. It takes
/// the selected user's reference or name as input.
class UserMessageOptionsWidget extends StatefulWidget {
  const UserMessageOptionsWidget({
    super.key,
    required this.broadcastID,
    required this.userRef,
  });

  final DocumentReference? broadcastID;
  final DocumentReference? userRef;

  @override
  State<UserMessageOptionsWidget> createState() =>
      _UserMessageOptionsWidgetState();
}

class _UserMessageOptionsWidgetState extends State<UserMessageOptionsWidget> {
  late UserMessageOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserMessageOptionsModel());

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
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: Color(0x80000000),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: 350.0,
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
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: StreamBuilder<BroadcastsRecord>(
                      stream:
                          BroadcastsRecord.getDocument(widget.broadcastID!),
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: StreamBuilder<UserRecord>(
                                    stream: UserRecord.getDocument(
                                        widget.userRef!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitRipple(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }

                                      final columnUserRecord = snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              functions.nameConcat(
                                                  columnUserRecord.displayName,
                                                  columnUserRecord.userSurname),
                                              'name',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeIsCustom,
                                                ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                StreamBuilder<UserRecord>(
                                  stream:
                                      UserRecord.getDocument(widget.userRef!),
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

                                    final columnUserRecord = snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.messagesFromMe =
                                                await queryBroadcastsRecordOnce(
                                              queryBuilder:
                                                  (broadcastsRecord) =>
                                                      broadcastsRecord
                                                          .where(
                                                            'sender_id',
                                                            isEqualTo:
                                                                currentUserReference,
                                                          )
                                                          .where(
                                                            'recipients',
                                                            arrayContains:
                                                                columnUserRecord
                                                                    .reference,
                                                          )
                                                          .where(
                                                            'num_of_recipients',
                                                            isEqualTo: 2,
                                                          ),
                                              limit: 1,
                                            );
                                            _model.messagesFromThem =
                                                await queryBroadcastsRecordOnce(
                                              queryBuilder:
                                                  (broadcastsRecord) =>
                                                      broadcastsRecord
                                                          .where(
                                                            'sender_id',
                                                            isEqualTo:
                                                                columnUserRecord
                                                                    .reference,
                                                          )
                                                          .where(
                                                            'recipients',
                                                            arrayContains:
                                                                currentUserReference,
                                                          )
                                                          .where(
                                                            'num_of_recipients',
                                                            isEqualTo: 2,
                                                          ),
                                              limit: 1,
                                            );
                                            if (_model.messagesFromMe!.length >
                                                0) {
                                              context.pushNamed(
                                                MessageUniversalNewCopyWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'broadcastID': serializeParam(
                                                    widget.broadcastID,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'broadcastName':
                                                      serializeParam(
                                                    columnUserRecord
                                                        .displayName,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else if (_model
                                                    .messagesFromThem!.length >
                                                0) {
                                              context.pushNamed(
                                                MessageUniversalNewCopyWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'broadcastID': serializeParam(
                                                    widget.broadcastID,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'broadcastName':
                                                      serializeParam(
                                                    columnUserRecord
                                                        .displayName,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              var broadcastsRecordReference =
                                                  BroadcastsRecord.collection
                                                      .doc();
                                              await broadcastsRecordReference
                                                  .set({
                                                ...createBroadcastsRecordData(
                                                  senderId:
                                                      currentUserReference,
                                                  broadcastName:
                                                      functions.nameConcat(
                                                          columnUserRecord
                                                              .displayName,
                                                          columnUserRecord
                                                              .userSurname),
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'recipients': [
                                                      columnUserRecord.reference
                                                    ],
                                                  },
                                                ),
                                              });
                                              _model.chatCreate =
                                                  BroadcastsRecord
                                                      .getDocumentFromData({
                                                ...createBroadcastsRecordData(
                                                  senderId:
                                                      currentUserReference,
                                                  broadcastName:
                                                      functions.nameConcat(
                                                          columnUserRecord
                                                              .displayName,
                                                          columnUserRecord
                                                              .userSurname),
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'recipients': [
                                                      columnUserRecord.reference
                                                    ],
                                                  },
                                                ),
                                              }, broadcastsRecordReference);

                                              await _model.chatCreate!.reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'recipients':
                                                        FieldValue.arrayUnion([
                                                      currentUserReference
                                                    ]),
                                                  },
                                                ),
                                              });

                                              await _model.chatCreate!.reference
                                                  .update(
                                                      createBroadcastsRecordData(
                                                numOfRecipients: 2,
                                              ));

                                              context.pushNamed(
                                                MessageUniversalNewCopyWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'broadcastID': serializeParam(
                                                    _model
                                                        .chatCreate?.reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'broadcastName':
                                                      serializeParam(
                                                    columnUserRecord
                                                        .displayName,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.message_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                              Text(
                                                'Message Privately',
                                                style:
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
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.volume_off_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Mute User',
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
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.block_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Block User',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (columnBroadcastsRecord.senderId ==
                                    currentUserReference)
                                  StreamBuilder<UserRecord>(
                                    stream: UserRecord.getDocument(
                                        widget.userRef!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitRipple(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.person_off,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Mute ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                  ),
                                                ),
                                              ),
                                              Switch.adaptive(
                                                value: _model.switchValue1 ??=
                                                    columnBroadcastsRecord
                                                        .mutedUsers
                                                        .contains(
                                                            columnUserRecord
                                                                .reference),
                                                onChanged: (newValue) async {
                                                  safeSetState(() =>
                                                      _model.switchValue1 =
                                                          newValue);
                                                  if (newValue) {
                                                    await widget.broadcastID!
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'muted_users':
                                                              FieldValue
                                                                  .arrayUnion([
                                                            columnUserRecord
                                                                .reference
                                                          ]),
                                                        },
                                                      ),
                                                    });
                                                  } else {
                                                    await widget.broadcastID!
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'muted_users':
                                                              FieldValue
                                                                  .arrayRemove([
                                                            columnUserRecord
                                                                .reference
                                                          ]),
                                                        },
                                                      ),
                                                    });
                                                  }
                                                },
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                activeTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                inactiveThumbColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.volume_off_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Mute User',
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
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.block_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Block User',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            if (columnBroadcastsRecord.senderId ==
                                currentUserReference)
                              StreamBuilder<UserRecord>(
                                stream:
                                    UserRecord.getDocument(widget.userRef!),
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

                                  final columnUserRecord = snapshot.data!;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.chat_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Block from texting other members in chat ',
                                                style:
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
                                              ),
                                            ),
                                          ),
                                          Switch.adaptive(
                                            value: _model.switchValue2 ??=
                                                columnBroadcastsRecord
                                                    .mutedUsers
                                                    .contains(columnUserRecord
                                                        .reference),
                                            onChanged: (newValue) async {
                                              safeSetState(() => _model
                                                  .switchValue2 = newValue);
                                              if (newValue) {
                                                await widget.broadcastID!
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'blocked_from_other_users':
                                                          FieldValue
                                                              .arrayUnion([
                                                        columnUserRecord
                                                            .reference
                                                      ]),
                                                    },
                                                  ),
                                                });
                                              } else {
                                                await widget.broadcastID!
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'blocked_from_other_users':
                                                          FieldValue
                                                              .arrayRemove([
                                                        columnUserRecord
                                                            .reference
                                                      ]),
                                                    },
                                                  ),
                                                });
                                              }
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            activeTrackColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveTrackColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            inactiveThumbColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                              text: 'Cancel',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
