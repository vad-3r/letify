import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'portfolio_linked_owners_messaging_model.dart';
export 'portfolio_linked_owners_messaging_model.dart';

class PortfolioLinkedOwnersMessagingWidget extends StatefulWidget {
  const PortfolioLinkedOwnersMessagingWidget({super.key});

  static String routeName = 'Portfolio_Linked_Owners_Messaging';
  static String routePath = '/portfolioLinkedOwnersMessaging';

  @override
  State<PortfolioLinkedOwnersMessagingWidget> createState() =>
      _PortfolioLinkedOwnersMessagingWidgetState();
}

class _PortfolioLinkedOwnersMessagingWidgetState
    extends State<PortfolioLinkedOwnersMessagingWidget> {
  late PortfolioLinkedOwnersMessagingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PortfolioLinkedOwnersMessagingModel());

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
            'New Group Chat',
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
                              6.0, 0.0, 6.0, 0.0),
                          child: FutureBuilder<List<PortfolioRecord>>(
                            future: queryPortfolioRecordOnce(
                              queryBuilder: (portfolioRecord) => portfolioRecord
                                  .where(
                                    'landlord_id',
                                    isEqualTo: currentUserReference,
                                  )
                                  .orderBy('portfolio_name'),
                              limit: 30,
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
                              List<PortfolioRecord>
                                  listViewOPortfolioRecordList = snapshot.data!;

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewOPortfolioRecordList.length,
                                itemBuilder: (context, listViewOIndex) {
                                  final listViewOPortfolioRecord =
                                      listViewOPortfolioRecordList[
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
                                            broadcastName:
                                                listViewOPortfolioRecord
                                                    .portfolioName,
                                            createdAt: getCurrentTimestamp,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'recipients':
                                                  listViewOPortfolioRecord
                                                      .ownersList2,
                                            },
                                          ),
                                        });
                                        _model.broadcast = BroadcastsRecord
                                            .getDocumentFromData({
                                          ...createBroadcastsRecordData(
                                            senderId: currentUserReference,
                                            broadcastName:
                                                listViewOPortfolioRecord
                                                    .portfolioName,
                                            createdAt: getCurrentTimestamp,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'recipients':
                                                  listViewOPortfolioRecord
                                                      .ownersList2,
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
                                                        listViewOPortfolioRecord
                                                            .portfolioName,
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
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
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
