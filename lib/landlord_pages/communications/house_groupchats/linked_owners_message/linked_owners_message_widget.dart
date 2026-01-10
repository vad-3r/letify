import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'linked_owners_message_model.dart';
export 'linked_owners_message_model.dart';

class LinkedOwnersMessageWidget extends StatefulWidget {
  const LinkedOwnersMessageWidget({super.key});

  static String routeName = 'Linked_Owners_Message';
  static String routePath = '/linkedOwnersMessage';

  @override
  State<LinkedOwnersMessageWidget> createState() =>
      _LinkedOwnersMessageWidgetState();
}

class _LinkedOwnersMessageWidgetState extends State<LinkedOwnersMessageWidget> {
  late LinkedOwnersMessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkedOwnersMessageModel());

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
              context.pushNamed(DashboardLandlordWidget.routeName);
            },
          ),
          title: Text(
            'New Chat',
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 6.0, 20.0),
                          child: StreamBuilder<List<LandlordRecord>>(
                            stream: queryLandlordRecord(
                              queryBuilder: (landlordRecord) => landlordRecord
                                  .where(
                                    'agent_mananger',
                                    isEqualTo: currentUserReference,
                                  )
                                  .orderBy('user_name'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitRipple(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<LandlordRecord> listViewOLandlordRecordList =
                                  snapshot.data!;

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewOLandlordRecordList.length,
                                itemBuilder: (context, listViewOIndex) {
                                  final listViewOLandlordRecord =
                                      listViewOLandlordRecordList[
                                          listViewOIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 2.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var broadcastsRecordReference =
                                            BroadcastsRecord.collection.doc();
                                        await broadcastsRecordReference.set({
                                          ...createBroadcastsRecordData(
                                            senderId: currentUserReference,
                                            broadcastName: 'Private Chat',
                                            createdAt: getCurrentTimestamp,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'recipients': [
                                                listViewOLandlordRecord
                                                    .landlordId
                                              ],
                                            },
                                          ),
                                        });
                                        _model.broadcast = BroadcastsRecord
                                            .getDocumentFromData({
                                          ...createBroadcastsRecordData(
                                            senderId: currentUserReference,
                                            broadcastName: 'Private Chat',
                                            createdAt: getCurrentTimestamp,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'recipients': [
                                                listViewOLandlordRecord
                                                    .landlordId
                                              ],
                                            },
                                          ),
                                        }, broadcastsRecordReference);

                                        await _model.broadcast!.reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'recipients':
                                                  FieldValue.arrayUnion(
                                                      [currentUserReference]),
                                            },
                                          ),
                                        });

                                        await _model.broadcast!.reference
                                            .update(createBroadcastsRecordData(
                                          numOfRecipients: _model
                                              .broadcast?.recipients.length,
                                        ));

                                        context.pushNamed(
                                          MessageUniversalBackToDashWidget
                                              .routeName,
                                          queryParameters: {
                                            'broadcastID': serializeParam(
                                              _model.broadcast?.reference,
                                              ParamType.DocumentReference,
                                            ),
                                            'broadcastName': serializeParam(
                                              _model.broadcast?.broadcastName,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );

                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 48.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.nameConcat(
                                                              listViewOLandlordRecord
                                                                  .userName,
                                                              listViewOLandlordRecord
                                                                  .surname),
                                                          'Name',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
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
                                },
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
          ),
        ),
      ),
    );
  }
}
