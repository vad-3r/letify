import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'media_preview_model.dart';
export 'media_preview_model.dart';

/// create an image preview component with a send button at the bottom
class MediaPreviewWidget extends StatefulWidget {
  const MediaPreviewWidget({
    super.key,
    required this.image,
    required this.broadcastID,
    required this.recipients,
    required this.imageURL,
  });

  final String? image;
  final DocumentReference? broadcastID;
  final List<DocumentReference>? recipients;
  final String? imageURL;

  @override
  State<MediaPreviewWidget> createState() => _MediaPreviewWidgetState();
}

class _MediaPreviewWidgetState extends State<MediaPreviewWidget> {
  late MediaPreviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MediaPreviewModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 500.0,
                height: 300.0,
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
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: FlutterFlowExpandedImageView(
                                image: Image.network(
                                  widget.image!,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Image.asset(
                                    'assets/images/error_image.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                allowRotation: false,
                                tag: widget.image!,
                                useHeroAnimation: true,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: widget.image!,
                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(
                              widget.image!,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                'assets/images/error_image.png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color(0x66000000),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.close_fullscreen_rounded,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                  maxLines: null,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              Flexible(
                child: FFButtonWidget(
                  onPressed: () async {
                    var broadcastMessagesRecordReference =
                        BroadcastMessagesRecord.createDoc(widget.broadcastID!);
                    await broadcastMessagesRecordReference.set({
                      ...createBroadcastMessagesRecordData(
                        broadcastId: widget.broadcastID,
                        sender: currentUserReference,
                        message: _model.textController.text,
                        timestamp: getCurrentTimestamp,
                        file: widget.image,
                        fileURL: widget.imageURL,
                      ),
                      ...mapToFirestore(
                        {
                          'unread_user_list': widget.recipients,
                        },
                      ),
                    });
                    _model.message =
                        BroadcastMessagesRecord.getDocumentFromData({
                      ...createBroadcastMessagesRecordData(
                        broadcastId: widget.broadcastID,
                        sender: currentUserReference,
                        message: _model.textController.text,
                        timestamp: getCurrentTimestamp,
                        file: widget.image,
                        fileURL: widget.imageURL,
                      ),
                      ...mapToFirestore(
                        {
                          'unread_user_list': widget.recipients,
                        },
                      ),
                    }, broadcastMessagesRecordReference);

                    await _model.message!.reference.update({
                      ...mapToFirestore(
                        {
                          'unread_user_list':
                              FieldValue.arrayRemove([currentUserReference]),
                        },
                      ),
                    });

                    await widget.broadcastID!.update({
                      ...createBroadcastsRecordData(
                        lastMessage: _model.message?.message,
                        lastMessageTime: getCurrentTimestamp,
                        lastMessageSentRef: _model.message?.reference,
                        lastMessageOwner: currentUserReference,
                      ),
                      ...mapToFirestore(
                        {
                          'unread_users': widget.recipients,
                        },
                      ),
                    });

                    await widget.broadcastID!.update({
                      ...mapToFirestore(
                        {
                          'unread_users':
                              FieldValue.arrayRemove([currentUserReference]),
                        },
                      ),
                    });
                    _model.noti = await actions.filterUsersToNotify(
                      widget.recipients!.toList(),
                    );

                    await widget.broadcastID!.update({
                      ...mapToFirestore(
                        {
                          'unread_messages': FieldValue.arrayUnion(
                              [_model.message?.reference]),
                        },
                      ),
                    });
                    triggerPushNotification(
                      notificationTitle: functions.nameConcat(
                          currentUserDisplayName,
                          valueOrDefault(
                              currentUserDocument?.userSurname, ''))!,
                      notificationText: _model.message!.message,
                      notificationImageUrl: _model.message?.file,
                      notificationSound: 'default',
                      userRefs: _model.noti!.toList(),
                      initialPageName: 'Landing_Page',
                      parameterData: {},
                    );
                    Navigator.pop(context);

                    safeSetState(() {});
                  },
                  text: 'Send',
                  icon: Icon(
                    Icons.send,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconColor: FlutterFlowTheme.of(context).info,
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
