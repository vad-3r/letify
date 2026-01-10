import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/de_link_contract_widget.dart';
import '/components/link_widget.dart';
import '/components/overrid_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/landlord_pages/property_listing/portfolio/agent_linking/prohibit/prohibit_widget.dart';
import '/landlord_pages/property_listing/tenants/contract_actions/contract_actions_widget.dart';
import '/landlord_pages/property_listing/tenants/de_link_tenant/de_link_tenant_widget.dart';
import '/landlord_pages/property_listing/tenants/edit_oracle_upload/edit_oracle_upload_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_builder_owner_model.dart';
export 'home_builder_owner_model.dart';

class HomeBuilderOwnerWidget extends StatefulWidget {
  const HomeBuilderOwnerWidget({
    super.key,
    required this.propertyID,
    required this.propertyName,
    required this.portfolioName,
    required this.portfolioID,
    required this.propertyStringID,
  });

  final DocumentReference? propertyID;
  final String? propertyName;
  final String? portfolioName;
  final DocumentReference? portfolioID;
  final String? propertyStringID;

  static String routeName = 'Home_Builder_owner';
  static String routePath = '/homeBuilderOwner';

  @override
  State<HomeBuilderOwnerWidget> createState() => _HomeBuilderOwnerWidgetState();
}

class _HomeBuilderOwnerWidgetState extends State<HomeBuilderOwnerWidget>
    with TickerProviderStateMixin {
  late HomeBuilderOwnerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeBuilderOwnerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.landlord = await queryLandlordRecordOnce(
        queryBuilder: (landlordRecord) => landlordRecord.where(
          'landlord_id',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'verticalDividerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
                PropertyListOwnerWidget.routeName,
                queryParameters: {
                  'portfolioName': serializeParam(
                    widget.portfolioName,
                    ParamType.String,
                  ),
                  'portfolioID': serializeParam(
                    widget.portfolioID,
                    ParamType.DocumentReference,
                  ),
                }.withoutNulls,
              );
            },
          ),
          title: Text(
            valueOrDefault<String>(
              widget.propertyName,
              'Property Name',
            ),
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).displaySmallIsCustom,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'All The Rooms Under This Property',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 110.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Room Name',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 203.4,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Tenant Name',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Student Number',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 150.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Link/De-Link',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 882.6,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Contract',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rent Amount',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].addToEnd(SizedBox(width: 135.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: StreamBuilder<List<RoomRecord>>(
                          stream: queryRoomRecord(
                            queryBuilder: (roomRecord) => roomRecord
                                .where(
                                  'property_id',
                                  isEqualTo: widget.propertyID,
                                )
                                .orderBy('room_index'),
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
                            List<RoomRecord> listViewRoomRecordList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewRoomRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewRoomRecord =
                                    listViewRoomRecordList[listViewIndex];
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 110.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listViewRoomRecord.roomName,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 203.4,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (listViewRoomRecord
                                                        .tenantInRoom !=
                                                    null)
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions.nameConcat(
                                                          listViewRoomRecord
                                                              .tenantName,
                                                          listViewRoomRecord
                                                              .tenantSurname),
                                                      'Tenant Name',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                              ],
                                            ),
                                            if ((listViewRoomRecord
                                                        .tenantInRoom ==
                                                    null) &&
                                                (listViewRoomRecord
                                                            .tenantName ==
                                                        ''))
                                              Flexible(
                                                child: Text(
                                                  ' Vacant',
                                                  textAlign: TextAlign.start,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                            if (listViewRoomRecord.tenantName ==
                                                'Pre-Linked Tenant')
                                              Flexible(
                                                child: Text(
                                                  'Pre-Linked',
                                                  textAlign: TextAlign.start,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
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
                                    ),
                                    Container(
                                      width: 200.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            if (listViewRoomRecord
                                                    .tenantInRoom !=
                                                null)
                                              StreamBuilder<
                                                  List<StudentRecord>>(
                                                stream: queryStudentRecord(
                                                  queryBuilder:
                                                      (studentRecord) =>
                                                          studentRecord.where(
                                                    'student_id',
                                                    isEqualTo:
                                                        listViewRoomRecord
                                                            .tenantInRoom,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<StudentRecord>
                                                      columnStudentRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnStudentRecord =
                                                      columnStudentRecordList
                                                              .isNotEmpty
                                                          ? columnStudentRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          columnStudentRecord
                                                              ?.studentNumber,
                                                          'Student Number',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            if (listViewRoomRecord.tenantName ==
                                                'Pre-Linked Tenant')
                                              StreamBuilder<
                                                  List<PrelinkedTenantsRecord>>(
                                                stream:
                                                    queryPrelinkedTenantsRecord(
                                                  queryBuilder:
                                                      (prelinkedTenantsRecord) =>
                                                          prelinkedTenantsRecord
                                                              .where(
                                                    'studentNumber',
                                                    isEqualTo:
                                                        listViewRoomRecord
                                                            .tenantStudentNum,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<PrelinkedTenantsRecord>
                                                      columnPrelinkedTenantsRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnPrelinkedTenantsRecord =
                                                      columnPrelinkedTenantsRecordList
                                                              .isNotEmpty
                                                          ? columnPrelinkedTenantsRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          columnPrelinkedTenantsRecord
                                                              ?.studentNumber,
                                                          'Student Number',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 150.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 8.0, 8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (listViewRoomRecord
                                                    .tenantInRoom !=
                                                null)
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    if (_model.landlord
                                                            ?.permissions
                                                            .contains(functions
                                                                .aString(
                                                                    'De-Link Tenants')) ==
                                                        true) {
                                                      if (listViewRoomRecord
                                                              .isGenerated ==
                                                          true) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                title: Text(
                                                                    'Contract Linked'),
                                                                content: Text(
                                                                    'A contract is linked to this tenant. Long  press contract name to de-link contract '),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
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
                                                                      DeLinkTenantWidget(
                                                                    propertyID:
                                                                        widget
                                                                            .propertyID!,
                                                                    roomID: listViewRoomRecord
                                                                        .reference,
                                                                    studentInRoom:
                                                                        listViewRoomRecord
                                                                            .tenantInRoom!,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      }
                                                    } else {
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
                                                                    ProhibitWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  },
                                                  text: 'De-Link',
                                                  options: FFButtonOptions(
                                                    height: 28.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumIsCustom,
                                                            ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            if (listViewRoomRecord
                                                    .tenantInRoom ==
                                                null)
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    if (_model.landlord
                                                            ?.permissions
                                                            .contains(functions
                                                                .aString(
                                                                    'Link Tenants')) ==
                                                        true) {
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
                                                                    LinkWidget(
                                                                  propertyID:
                                                                      widget
                                                                          .propertyID!,
                                                                  propertyName:
                                                                      widget
                                                                          .propertyName!,
                                                                  roomID: listViewRoomRecord
                                                                      .reference,
                                                                  roomName:
                                                                      listViewRoomRecord
                                                                          .roomName,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    } else {
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
                                                                    ProhibitWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  },
                                                  text: 'Link',
                                                  options: FFButtonOptions(
                                                    height: 28.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumIsCustom,
                                                            ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 250.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            if ((listViewRoomRecord
                                                        .tenantInRoom !=
                                                    null) &&
                                                (listViewRoomRecord
                                                        .isGenerated ==
                                                    false))
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    LinkContractWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'portfolioName':
                                                          serializeParam(
                                                        widget.portfolioName,
                                                        ParamType.String,
                                                      ),
                                                      'portfolioID':
                                                          serializeParam(
                                                        widget.portfolioID,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                      'roomID': serializeParam(
                                                        listViewRoomRecord,
                                                        ParamType.Document,
                                                      ),
                                                      'propertyName':
                                                          serializeParam(
                                                        widget.propertyName,
                                                        ParamType.String,
                                                      ),
                                                      'propertyID':
                                                          serializeParam(
                                                        widget.propertyID,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                      'tenantID':
                                                          serializeParam(
                                                        listViewRoomRecord
                                                            .tenantInRoom,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                      'propertyStringID':
                                                          serializeParam(
                                                        widget
                                                            .propertyStringID,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'roomID':
                                                          listViewRoomRecord,
                                                    },
                                                  );
                                                },
                                                text: 'Send Contract',
                                                options: FFButtonOptions(
                                                  height: 28.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumIsCustom,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            if ((listViewRoomRecord
                                                        .tenantInRoom !=
                                                    null) &&
                                                (listViewRoomRecord
                                                        .isGenerated ==
                                                    true))
                                              FutureBuilder<
                                                  List<ContractRecord>>(
                                                future: queryContractRecordOnce(
                                                  queryBuilder:
                                                      (contractRecord) =>
                                                          contractRecord
                                                              .where(
                                                                'landlord_id',
                                                                isEqualTo: _model
                                                                    .landlord
                                                                    ?.agentMananger,
                                                              )
                                                              .where(
                                                                'tenants_linked',
                                                                arrayContains:
                                                                    listViewRoomRecord
                                                                        .tenantInRoom,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ContractRecord>
                                                      containerContractRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final containerContractRecord =
                                                      containerContractRecordList
                                                              .isNotEmpty
                                                          ? containerContractRecordList
                                                              .first
                                                          : null;

                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
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
                                                                    DeLinkContractWidget(
                                                                  propertyID:
                                                                      widget
                                                                          .propertyID!,
                                                                  roomID: listViewRoomRecord
                                                                      .reference,
                                                                  studentInRoom:
                                                                      listViewRoomRecord
                                                                          .tenantInRoom!,
                                                                  isGenerated:
                                                                      listViewRoomRecord
                                                                          .isGenerated,
                                                                  tenantsLinked:
                                                                      containerContractRecord!
                                                                          .tenantsLinked,
                                                                  contractID:
                                                                      containerContractRecord
                                                                          .reference,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 200.0,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Visibility(
                                                        visible: (listViewRoomRecord
                                                                    .tenantInRoom !=
                                                                null) &&
                                                            (listViewRoomRecord
                                                                    .isGenerated ==
                                                                true),
                                                        child: Text(
                                                          'Contract Sent',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            if (listViewRoomRecord
                                                    .tenantInRoom ==
                                                null)
                                              Container(
                                                width: 200.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Visibility(
                                                  visible: listViewRoomRecord
                                                          .tenantInRoom ==
                                                      null,
                                                  child: Text(
                                                    'Contract Unavailable',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 216.3,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            if (listViewRoomRecord.roomStatus ==
                                                'Vacant')
                                              Container(
                                                width: 180.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Visibility(
                                                  visible: listViewRoomRecord
                                                          .roomStatus ==
                                                      'Vacant',
                                                  child: Text(
                                                    'No Tenant Linked',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            StreamBuilder<List<ContractRecord>>(
                                              stream: queryContractRecord(
                                                queryBuilder:
                                                    (contractRecord) =>
                                                        contractRecord.where(
                                                  'tenants_linked',
                                                  arrayContains:
                                                      listViewRoomRecord
                                                          .tenantInRoom,
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ContractRecord>
                                                    columnContractRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnContractRecord =
                                                    columnContractRecordList
                                                            .isNotEmpty
                                                        ? columnContractRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    StreamBuilder<
                                                        List<TenantInfoRecord>>(
                                                      stream:
                                                          queryTenantInfoRecord(
                                                        parent:
                                                            columnContractRecord
                                                                ?.reference,
                                                        queryBuilder:
                                                            (tenantInfoRecord) =>
                                                                tenantInfoRecord
                                                                    .where(
                                                          'tenant_id',
                                                          isEqualTo:
                                                              listViewRoomRecord
                                                                  .tenantInRoom,
                                                        ),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitRipple(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TenantInfoRecord>
                                                            columnTenantInfoRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final columnTenantInfoRecord =
                                                            columnTenantInfoRecordList
                                                                    .isNotEmpty
                                                                ? columnTenantInfoRecordList
                                                                    .first
                                                                : null;

                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((listViewRoomRecord
                                                                        .roomStatus ==
                                                                    'Occupied') &&
                                                                (columnTenantInfoRecord
                                                                        ?.isSigned ==
                                                                    false) &&
                                                                (listViewRoomRecord
                                                                        .isSigned ==
                                                                    false))
                                                              InkWell(
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
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                OverridWidget(
                                                                              contractID: columnContractRecord!.reference,
                                                                              tenantID: columnTenantInfoRecord!.tenantId!,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 180.0,
                                                                  height: 40.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Has not signed',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((listViewRoomRecord
                                                                        .roomStatus ==
                                                                    'Occupied') &&
                                                                (listViewRoomRecord
                                                                        .isSigned ==
                                                                    true) &&
                                                                (columnTenantInfoRecord
                                                                        ?.isSigned ==
                                                                    true))
                                                              Container(
                                                                width: 150.0,
                                                                height: 40.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
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
                                                                    await actions
                                                                        .generateContractPDFTenant(
                                                                      columnContractRecord!
                                                                          .lessorName,
                                                                      columnContractRecord
                                                                          .idNum,
                                                                      columnContractRecord
                                                                          .streetAddress,
                                                                      columnContractRecord
                                                                          .suburb,
                                                                      columnContractRecord
                                                                          .city,
                                                                      columnContractRecord
                                                                          .postalCode,
                                                                      columnContractRecord
                                                                          .eMail,
                                                                      columnContractRecord
                                                                          .telPhone,
                                                                      columnTenantInfoRecord!
                                                                          .lesseeName,
                                                                      columnTenantInfoRecord
                                                                          .lesseeIdNum,
                                                                      columnTenantInfoRecord
                                                                          .lesseeStreetAddress,
                                                                      columnTenantInfoRecord
                                                                          .lesseeProvince,
                                                                      columnTenantInfoRecord
                                                                          .lesseeCity,
                                                                      columnTenantInfoRecord
                                                                          .lesseePostalCode,
                                                                      columnTenantInfoRecord
                                                                          .lesseeEmail,
                                                                      columnTenantInfoRecord
                                                                          .lesseeTelphone,
                                                                      listViewRoomRecord
                                                                          .roomName,
                                                                      functions.nameConcat(
                                                                          columnTenantInfoRecord
                                                                              .prtpName,
                                                                          columnTenantInfoRecord
                                                                              .prtpSurname)!,
                                                                      columnTenantInfoRecord
                                                                          .prtpIdNum,
                                                                      columnTenantInfoRecord
                                                                          .prtpStreetAddress,
                                                                      columnTenantInfoRecord
                                                                          .prtpProvince,
                                                                      columnTenantInfoRecord
                                                                          .prtpCity,
                                                                      columnTenantInfoRecord
                                                                          .prtpPostalCode,
                                                                      columnTenantInfoRecord
                                                                          .prtpEmail,
                                                                      columnTenantInfoRecord
                                                                          .prtpTel,
                                                                      functions.nameConcat(
                                                                          columnTenantInfoRecord
                                                                              .nokName,
                                                                          columnTenantInfoRecord
                                                                              .nokSurnam)!,
                                                                      columnTenantInfoRecord
                                                                          .nokIdNum,
                                                                      columnTenantInfoRecord
                                                                          .nokStreetAddress,
                                                                      columnTenantInfoRecord
                                                                          .nokProvince,
                                                                      columnTenantInfoRecord
                                                                          .nokCity,
                                                                      columnTenantInfoRecord
                                                                          .nokPostalCode,
                                                                      columnTenantInfoRecord
                                                                          .nokEmail,
                                                                      columnTenantInfoRecord
                                                                          .nokTel,
                                                                      widget
                                                                          .propertyName!,
                                                                      listViewRoomRecord
                                                                          .tenantStudentNum,
                                                                      columnContractRecord
                                                                          .topTen1,
                                                                      columnContractRecord
                                                                          .topTen2,
                                                                      columnContractRecord
                                                                          .topTen3,
                                                                      columnContractRecord
                                                                          .topTen4,
                                                                      columnContractRecord
                                                                          .topTen5,
                                                                      columnContractRecord
                                                                          .topTen6,
                                                                      columnContractRecord
                                                                          .topTen7,
                                                                      columnContractRecord
                                                                          .topTen8,
                                                                      columnContractRecord
                                                                          .topTen9,
                                                                      columnContractRecord
                                                                          .topTen10,
                                                                      columnContractRecord
                                                                          .contractId,
                                                                      columnContractRecord
                                                                          .startDate!,
                                                                      columnContractRecord
                                                                          .endDate!,
                                                                      columnContractRecord
                                                                          .montlyRent,
                                                                      columnContractRecord
                                                                          .electricityRules,
                                                                      columnContractRecord
                                                                          .waterRules,
                                                                      columnContractRecord
                                                                          .geyserRules,
                                                                      columnContractRecord
                                                                          .roomType,
                                                                      columnContractRecord
                                                                          .adminFee,
                                                                      columnContractRecord
                                                                          .refundableFee,
                                                                      columnContractRecord
                                                                          .deposit,
                                                                      columnContractRecord
                                                                          .keyDeposit,
                                                                      columnContractRecord
                                                                          .customRoomType,
                                                                      columnTenantInfoRecord
                                                                          .tenantSignature,
                                                                      FFAppConstants
                                                                          .logoLetify,
                                                                      columnContractRecord
                                                                          .houseRules,
                                                                      functions.convertToString(
                                                                          columnTenantInfoRecord
                                                                              .copyOfId),
                                                                      functions.convertToString(
                                                                          columnTenantInfoRecord
                                                                              .copyOfStudentCard),
                                                                      FFAppConstants
                                                                          .llwelynStamp,
                                                                      columnContractRecord
                                                                          .signatureimagepath,
                                                                      columnContractRecord
                                                                          .signature1Url,
                                                                      columnContractRecord
                                                                          .signature2Url,
                                                                      columnContractRecord
                                                                          .signatureimagepath,
                                                                    );
                                                                  },
                                                                  onLongPress:
                                                                      () async {
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
                                                                              child: ContractActionsWidget(
                                                                                tenantInfo: columnTenantInfoRecord!.tenantId!,
                                                                                contractID: columnContractRecord!.reference,
                                                                                tenantContract: columnTenantInfoRecord.reference,
                                                                                contractIDString: columnContractRecord.contractId,
                                                                                roomID: listViewRoomRecord.reference,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if ((listViewRoomRecord.roomStatus ==
                                                                              'Occupied') &&
                                                                          (listViewRoomRecord.isSigned ==
                                                                              true))
                                                                        Text(
                                                                          'Signed',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .download_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          size:
                                                                              30.0,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 216.3,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            if (listViewRoomRecord
                                                    .tenantInRoom !=
                                                null)
                                              StreamBuilder<
                                                  List<TenantInfoRecord>>(
                                                stream: queryTenantInfoRecord(
                                                  queryBuilder:
                                                      (tenantInfoRecord) =>
                                                          tenantInfoRecord
                                                              .where(
                                                    'tenant_id',
                                                    isEqualTo:
                                                        listViewRoomRecord
                                                            .tenantInRoom,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<TenantInfoRecord>
                                                      columnTenantInfoRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final columnTenantInfoRecord =
                                                      columnTenantInfoRecordList
                                                              .isNotEmpty
                                                          ? columnTenantInfoRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if ((columnTenantInfoRecord
                                                                  ?.isApproved ==
                                                              false) &&
                                                          (columnTenantInfoRecord
                                                                  ?.isReviewed ==
                                                              true) &&
                                                          (columnTenantInfoRecord
                                                                  ?.isSigned ==
                                                              true))
                                                        Container(
                                                          width: 180.0,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Denied',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((columnTenantInfoRecord?.isApproved == true) &&
                                                          (columnTenantInfoRecord
                                                                  ?.isReviewed ==
                                                              true) &&
                                                          (columnTenantInfoRecord
                                                                  ?.isSigned ==
                                                              true))
                                                        Container(
                                                          width: 150.0,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Approved',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      if ((columnTenantInfoRecord?.isApproved == false) &&
                                                          (columnTenantInfoRecord
                                                                  ?.isReviewed ==
                                                              false) &&
                                                          (columnTenantInfoRecord
                                                                  ?.isSigned ==
                                                              false))
                                                        Container(
                                                          width: 180.0,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .warning,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Pending Approval',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      18.0,
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
                                                  );
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: EditOracleUploadWidget(
                                                    propertyID:
                                                        listViewRoomRecord
                                                            .reference,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Container(
                                        width: 200.0,
                                        height: 55.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              if (listViewRoomRecord
                                                      .isUploaded ==
                                                  true)
                                                Container(
                                                  width: 200.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Visibility(
                                                    visible: listViewRoomRecord
                                                            .isUploaded ==
                                                        true,
                                                    child: Text(
                                                      'Uploaded to Oracle',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              if ((listViewRoomRecord
                                                          .isUploaded ==
                                                      false) &&
                                                  (listViewRoomRecord
                                                          .tenantInRoom !=
                                                      null))
                                                Container(
                                                  width: 180.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warning,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Visibility(
                                                    visible: (listViewRoomRecord
                                                                .isUploaded ==
                                                            false) &&
                                                        (listViewRoomRecord
                                                                .tenantInRoom !=
                                                            null),
                                                    child: Text(
                                                      'Not Uploaded',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              if ((listViewRoomRecord
                                                          .isUploaded ==
                                                      false) &&
                                                  (listViewRoomRecord
                                                          .tenantInRoom ==
                                                      null))
                                                Container(
                                                  width: 180.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Visibility(
                                                    visible: (listViewRoomRecord
                                                                .isUploaded ==
                                                            false) &&
                                                        (listViewRoomRecord
                                                                .tenantInRoom ==
                                                            null),
                                                    child: Text(
                                                      'No Contract Sent',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 200.0,
                                      height: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child:
                                            StreamBuilder<List<ContractRecord>>(
                                          stream: queryContractRecord(
                                            queryBuilder: (contractRecord) =>
                                                contractRecord.where(
                                              'landlord_id',
                                              isEqualTo: _model
                                                  .landlord?.agentMananger,
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<ContractRecord>
                                                columnContractRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final columnContractRecord =
                                                columnContractRecordList
                                                        .isNotEmpty
                                                    ? columnContractRecordList
                                                        .first
                                                    : null;

                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                if (listViewRoomRecord
                                                        .isGenerated ==
                                                    true)
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'R ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: valueOrDefault<
                                                              String>(
                                                            columnContractRecord
                                                                ?.montlyRent
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: TextStyle(),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    StreamBuilder<List<ContractRecord>>(
                                      stream: queryContractRecord(
                                        queryBuilder: (contractRecord) =>
                                            contractRecord.where(
                                          'tenants_linked',
                                          arrayContains:
                                              listViewRoomRecord.tenantInRoom,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<ContractRecord>
                                            columnContractRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnContractRecord =
                                            columnContractRecordList.isNotEmpty
                                                ? columnContractRecordList.first
                                                : null;

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            StreamBuilder<
                                                List<TenantInfoRecord>>(
                                              stream: queryTenantInfoRecord(
                                                parent: columnContractRecord
                                                    ?.reference,
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<TenantInfoRecord>
                                                    columnTenantInfoRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final columnTenantInfoRecord =
                                                    columnTenantInfoRecordList
                                                            .isNotEmpty
                                                        ? columnTenantInfoRecordList
                                                            .first
                                                        : null;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if ((listViewRoomRecord
                                                                .tenantInRoom !=
                                                            null) &&
                                                        ((columnTenantInfoRecord !=
                                                                null) ==
                                                            true))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            await actions
                                                                .generateContractPDFTenant(
                                                              columnContractRecord!
                                                                  .lessorName,
                                                              columnContractRecord
                                                                  .idNum,
                                                              columnContractRecord
                                                                  .streetAddress,
                                                              columnContractRecord
                                                                  .suburb,
                                                              columnContractRecord
                                                                  .city,
                                                              columnContractRecord
                                                                  .postalCode,
                                                              columnContractRecord
                                                                  .eMail,
                                                              columnContractRecord
                                                                  .telPhone,
                                                              columnTenantInfoRecord!
                                                                  .lesseeName,
                                                              columnTenantInfoRecord
                                                                  .lesseeIdNum,
                                                              columnTenantInfoRecord
                                                                  .lesseeStreetAddress,
                                                              columnTenantInfoRecord
                                                                  .lesseeProvince,
                                                              columnTenantInfoRecord
                                                                  .lesseeCity,
                                                              columnTenantInfoRecord
                                                                  .lesseePostalCode,
                                                              columnTenantInfoRecord
                                                                  .lesseeEmail,
                                                              columnTenantInfoRecord
                                                                  .lesseeTelphone,
                                                              listViewRoomRecord
                                                                  .roomName,
                                                              functions.nameConcat(
                                                                  columnTenantInfoRecord
                                                                      .prtpName,
                                                                  columnTenantInfoRecord
                                                                      .prtpSurname)!,
                                                              columnTenantInfoRecord
                                                                  .prtpIdNum,
                                                              columnTenantInfoRecord
                                                                  .prtpStreetAddress,
                                                              columnTenantInfoRecord
                                                                  .prtpProvince,
                                                              columnTenantInfoRecord
                                                                  .prtpCity,
                                                              columnTenantInfoRecord
                                                                  .prtpPostalCode,
                                                              columnTenantInfoRecord
                                                                  .prtpEmail,
                                                              columnTenantInfoRecord
                                                                  .prtpTel,
                                                              functions.nameConcat(
                                                                  columnTenantInfoRecord
                                                                      .nokName,
                                                                  columnTenantInfoRecord
                                                                      .nokSurnam)!,
                                                              columnTenantInfoRecord
                                                                  .nokIdNum,
                                                              columnTenantInfoRecord
                                                                  .nokStreetAddress,
                                                              columnTenantInfoRecord
                                                                  .nokProvince,
                                                              columnTenantInfoRecord
                                                                  .nokCity,
                                                              columnTenantInfoRecord
                                                                  .nokPostalCode,
                                                              columnTenantInfoRecord
                                                                  .nokEmail,
                                                              columnTenantInfoRecord
                                                                  .nokTel,
                                                              widget
                                                                  .propertyName!,
                                                              listViewRoomRecord
                                                                  .tenantStudentNum,
                                                              columnContractRecord
                                                                  .topTen1,
                                                              columnContractRecord
                                                                  .topTen2,
                                                              columnContractRecord
                                                                  .topTen3,
                                                              columnContractRecord
                                                                  .topTen4,
                                                              columnContractRecord
                                                                  .topTen5,
                                                              columnContractRecord
                                                                  .topTen6,
                                                              columnContractRecord
                                                                  .topTen7,
                                                              columnContractRecord
                                                                  .topTen8,
                                                              columnContractRecord
                                                                  .topTen9,
                                                              columnContractRecord
                                                                  .topTen10,
                                                              columnContractRecord
                                                                  .contractId,
                                                              columnContractRecord
                                                                  .startDate!,
                                                              columnContractRecord
                                                                  .endDate!,
                                                              columnContractRecord
                                                                  .montlyRent,
                                                              columnContractRecord
                                                                  .electricityRules,
                                                              columnContractRecord
                                                                  .waterRules,
                                                              columnContractRecord
                                                                  .geyserRules,
                                                              columnContractRecord
                                                                  .roomType,
                                                              columnContractRecord
                                                                  .adminFee,
                                                              columnContractRecord
                                                                  .refundableFee,
                                                              columnContractRecord
                                                                  .deposit,
                                                              columnContractRecord
                                                                  .keyDeposit,
                                                              columnContractRecord
                                                                  .customRoomType,
                                                              columnTenantInfoRecord
                                                                  .tenantSignature,
                                                              FFAppConstants
                                                                  .logoLetify,
                                                              columnContractRecord
                                                                  .houseRules,
                                                              functions.convertToString(
                                                                  columnTenantInfoRecord
                                                                      .copyOfId),
                                                              functions.convertToString(
                                                                  columnTenantInfoRecord
                                                                      .copyOfStudentCard),
                                                              FFAppConstants
                                                                  .llwelynStamp,
                                                              columnContractRecord
                                                                  .signatureimagepath,
                                                              columnContractRecord
                                                                  .signature1Url,
                                                              columnContractRecord
                                                                  .signature2Url,
                                                              columnContractRecord
                                                                  .signatureimagepath,
                                                            );
                                                          },
                                                          text: 'Contract',
                                                          icon: Icon(
                                                            Icons.download,
                                                            size: 15.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleSmallIsCustom,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'All The Rooms Under This Property',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Text(
                                  'Contract signed but not uploaded to Oracle',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/double-tick_(2).png',
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Text(
                                  'Contract signed & uploaded to Oracle',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/double-tick_(1).png',
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      StreamBuilder<List<RoomRecord>>(
                        stream: queryRoomRecord(
                          queryBuilder: (roomRecord) => roomRecord
                              .where(
                                'property_id',
                                isEqualTo: widget.propertyID,
                              )
                              .orderBy('room_index'),
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
                          List<RoomRecord> listViewRoomRecordList =
                              snapshot.data!;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewRoomRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewRoomRecord =
                                  listViewRoomRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 2.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
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
                                          listViewRoomRecord.reference,
                                          ParamType.DocumentReference,
                                        ),
                                        'roomName': serializeParam(
                                          listViewRoomRecord.roomName,
                                          ParamType.String,
                                        ),
                                        'tenantInRoom': serializeParam(
                                          listViewRoomRecord.tenantInRoom,
                                          ParamType.DocumentReference,
                                        ),
                                        'isGenerated': serializeParam(
                                          listViewRoomRecord.isGenerated,
                                          ParamType.bool,
                                        ),
                                        'roomStatus': serializeParam(
                                          listViewRoomRecord.roomStatus,
                                          ParamType.String,
                                        ),
                                        'roomIDString': serializeParam(
                                          listViewRoomRecord.roomId,
                                          ParamType.String,
                                        ),
                                        'portfolioID': serializeParam(
                                          widget.portfolioID,
                                          ParamType.DocumentReference,
                                        ),
                                        'propertyIDString': serializeParam(
                                          widget.propertyStringID,
                                          ParamType.String,
                                        ),
                                        'portfolioName': serializeParam(
                                          widget.portfolioName,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: listViewRoomRecord
                                                          .roomName,
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                ),
                                              ),
                                            ],
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation1']!),
                                          SizedBox(
                                            height: 100.0,
                                            child: VerticalDivider(
                                              thickness: 2.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'verticalDividerOnPageLoadAnimation']!),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (listViewRoomRecord
                                                                    .tenantInRoom !=
                                                                null)
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions.nameConcat(
                                                                      listViewRoomRecord
                                                                          .tenantName,
                                                                      listViewRoomRecord
                                                                          .tenantSurname),
                                                                  'Tenant Name',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                          ],
                                                        ),
                                                        if ((listViewRoomRecord
                                                                    .tenantInRoom ==
                                                                null) &&
                                                            (listViewRoomRecord
                                                                        .tenantName ==
                                                                    ''))
                                                          Text(
                                                            ' Vacant',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        if (listViewRoomRecord
                                                                .tenantName ==
                                                            'Pre-Linked Tenant')
                                                          Text(
                                                            'Pre-Linked',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'columnOnPageLoadAnimation2']!),
                                          ),
                                          if ((listViewRoomRecord.isSigned ==
                                                  true) &&
                                              (listViewRoomRecord.isUploaded ==
                                                  false))
                                            Flexible(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/double-tick_(2).png',
                                                    width: 40.0,
                                                    height: 40.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if ((listViewRoomRecord.isSigned ==
                                                  true) &&
                                              (listViewRoomRecord.isUploaded ==
                                                  true))
                                            Flexible(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/double-tick_(1).png',
                                                    width: 40.0,
                                                    height: 40.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
