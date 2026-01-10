import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/student_pages/communications_tenants/anonymous_tip_off_sent/anonymous_tip_off_sent_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'anonymous_tip_off_model.dart';
export 'anonymous_tip_off_model.dart';

class AnonymousTipOffWidget extends StatefulWidget {
  const AnonymousTipOffWidget({
    super.key,
    required this.propertyID,
    required this.propertyName,
    required this.landlordID,
  });

  final DocumentReference? propertyID;
  final String? propertyName;
  final DocumentReference? landlordID;

  static String routeName = 'Anonymous_Tip_Off';
  static String routePath = '/anonymousTipOff';

  @override
  State<AnonymousTipOffWidget> createState() => _AnonymousTipOffWidgetState();
}

class _AnonymousTipOffWidgetState extends State<AnonymousTipOffWidget> {
  late AnonymousTipOffModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnonymousTipOffModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.agents = await queryAgentRecordOnce(
        queryBuilder: (agentRecord) => agentRecord.where(
          'owner',
          arrayContains: widget.landlordID,
        ),
      );
      _model.userList = _model.agents!
          .map((e) => e.userId)
          .withoutNulls
          .toList()
          .toList()
          .cast<DocumentReference>();
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
              context.pushNamed(
                CommunicationsWidget.routeName,
                queryParameters: {
                  'propertyID': serializeParam(
                    widget.propertyID,
                    ParamType.DocumentReference,
                  ),
                  'propertyName': serializeParam(
                    widget.propertyName,
                    ParamType.String,
                  ),
                  'landlordID': serializeParam(
                    widget.landlordID,
                    ParamType.DocumentReference,
                  ),
                }.withoutNulls,
              );
            },
          ),
          title: Text(
            'Anonymous Tip Off',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: StreamBuilder<List<UserRecord>>(
              stream: queryUserRecord(
                queryBuilder: (userRecord) => userRecord.where(
                  'uid',
                  isEqualTo: widget.landlordID?.id,
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
                        color: FlutterFlowTheme.of(context).primary,
                        size: 50.0,
                      ),
                    ),
                  );
                }
                List<UserRecord> scrollingColumnUserRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final scrollingColumnUserRecord =
                    scrollingColumnUserRecordList.isNotEmpty
                        ? scrollingColumnUserRecordList.first
                        : null;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Clearly State Your Message Below & Submit',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyLargeIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Note that your name will not be tied to the message as it will be anonymous',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            autofocus: true,
                                            textCapitalization:
                                                TextCapitalization.sentences,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Anonymous Message',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMediumIsCustom,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 12.0,
                                                          12.0, 12.0),
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
                                            maxLines: 5,
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.addToUserList(widget.landlordID!);
                                safeSetState(() {});

                                await TipOffsRecord.collection
                                    .doc()
                                    .set(createTipOffsRecordData(
                                      landlordId: widget.landlordID,
                                      propertyId: widget.propertyID,
                                      message: _model.textController.text,
                                      timestamp: getCurrentTimestamp,
                                      propertyName: widget.propertyName,
                                      tipoffId: random_data.randomString(
                                        12,
                                        12,
                                        true,
                                        true,
                                        true,
                                      ),
                                      opened: false,
                                    ));
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
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: AnonymousTipOffSentWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                triggerPushNotification(
                                  notificationTitle: 'Anonymous Tip-Off',
                                  notificationText: functions.nameConcat(
                                      'Anonymous tip-off from student in ',
                                      widget.propertyName)!,
                                  notificationSound: 'default',
                                  userRefs: _model.userList.toList(),
                                  initialPageName:
                                      'Properties_For_Communication',
                                  parameterData: {},
                                );
                                await launchUrl(Uri(
                                    scheme: 'mailto',
                                    path: scrollingColumnUserRecord!.email,
                                    query: {
                                      'subject': 'Anonymous Tip-Off',
                                      'body': functions.sendEmailText(
                                          _model.textController.text,
                                          functions.nameConcat(
                                              currentUserDisplayName,
                                              valueOrDefault(
                                                  currentUserDocument
                                                      ?.userSurname,
                                                  ''))!,
                                          widget.propertyName!)!,
                                    }
                                        .entries
                                        .map((MapEntry<String, String> e) =>
                                            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                        .join('&')));

                                await widget.propertyID!.update({
                                  ...mapToFirestore(
                                    {
                                      'anon_noti_counter':
                                          FieldValue.increment(1),
                                    },
                                  ),
                                });

                                context.pushNamed(
                                  CommunicationsWidget.routeName,
                                  queryParameters: {
                                    'propertyID': serializeParam(
                                      widget.propertyID,
                                      ParamType.DocumentReference,
                                    ),
                                    'propertyName': serializeParam(
                                      widget.propertyName,
                                      ParamType.String,
                                    ),
                                    'landlordID': serializeParam(
                                      widget.landlordID,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );

                                Navigator.pop(context);
                              },
                              text: 'Send Message',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                                elevation: 4.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
