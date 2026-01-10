import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/landlord_pages/contracts/screening_builder/edit_screening_answer/edit_screening_answer_widget.dart';
import '/landlord_pages/contracts/screening_builder/edit_screening_name/edit_screening_name_widget.dart';
import '/landlord_pages/contracts/screening_builder/edit_screening_question/edit_screening_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'screening_builder_details_model.dart';
export 'screening_builder_details_model.dart';

class ScreeningBuilderDetailsWidget extends StatefulWidget {
  const ScreeningBuilderDetailsWidget({
    super.key,
    required this.screeningBuilderID,
    required this.questions,
  });

  final DocumentReference? screeningBuilderID;
  final List<ScreeningBuilderQuestionRecord>? questions;

  static String routeName = 'Screening_Builder_Details';
  static String routePath = '/screeningBuilderDetails';

  @override
  State<ScreeningBuilderDetailsWidget> createState() =>
      _ScreeningBuilderDetailsWidgetState();
}

class _ScreeningBuilderDetailsWidgetState
    extends State<ScreeningBuilderDetailsWidget> {
  late ScreeningBuilderDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScreeningBuilderDetailsModel());

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
              context.safePop();
            },
          ),
          title: Text(
            'Screening Builder Details',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 24.0),
                  child: StreamBuilder<ScreeningBuilderRecord>(
                    stream: ScreeningBuilderRecord.getDocument(
                        widget.screeningBuilderID!),
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

                      final scrollingColumnScreeningBuilderRecord =
                          snapshot.data!;

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  scrollingColumnScreeningBuilderRecord.name,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: InkWell(
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
                                                child: EditScreeningNameWidget(
                                                  screeningID:
                                                      scrollingColumnScreeningBuilderRecord
                                                          .reference,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Icon(
                                      Icons.edit_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (scrollingColumnScreeningBuilderRecord
                                    .acknowledgement)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 16.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Acknowledgement ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Please note that all questions must be answered truthfully, as proof of ADS (Academic Data Summary) must be attached for verification.By filling in this form, the student acknowledges that they are aware the information provided is mandatory in order to secure a spot in ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                    TextSpan(
                                                      text:
                                                          scrollingColumnScreeningBuilderRecord
                                                              .companyName,
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '. The information provided is necessary to determine whether the student is a suitable candidate for a room.',
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                if (scrollingColumnScreeningBuilderRecord
                                    .complianceNotice)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 16.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Compliance Notice (POPI Act)',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'You hereby declare and confirm that you, as an individual who is providing information and hereinafter collectively referred to as the client, do irrevocably agree and understand that all information supplied or given to the service provider is provided in terms of the terms and conditions set out below, as well as in terms of this agreement and consent declaration.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                if (scrollingColumnScreeningBuilderRecord
                                    .declaration)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 16.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Declarations by Tenant',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'We, ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                    TextSpan(
                                                      text:
                                                          scrollingColumnScreeningBuilderRecord
                                                              .companyName,
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ', hereby declare the proper handling of any and all personal information. This is not limited to and may include academic data, e.g., course information, modules; personal data such as student and ID numbers; NSFAS agreements; outstanding fees; accommodation arrangements which were previously or are currently in effect. We will uphold this agreement as required by law, provided that the client provides us with proper and true information.\n\n',
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          'I, [Tenant Name], hereby acknowledge that all information provided is true and creditable. I also agree to be held liable for any information falsely provided. By signing this contract, I give ',
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          scrollingColumnScreeningBuilderRecord
                                                              .companyName,
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' the proper consent to handle my personal information.',
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final questions =
                                          widget.questions!.toList();

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: questions.length,
                                        itemBuilder: (context, questionsIndex) {
                                          final questionsItem =
                                              questions[questionsIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 16.0, 12.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: questionsItem
                                                                  .index
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text: '. ',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  questionsItem
                                                                      .question,
                                                              style: TextStyle(
                                                                fontSize: 16.0,
                                                              ),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            12.0),
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
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
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
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          EditScreeningQuestionWidget(
                                                                        questionID:
                                                                            questionsItem.reference,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          child: Icon(
                                                            Icons.edit_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<
                                                        ScreeningBuilderAnswersRecord>>(
                                                  stream:
                                                      queryScreeningBuilderAnswersRecord(
                                                    parent:
                                                        questionsItem.reference,
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
                                                    List<ScreeningBuilderAnswersRecord>
                                                        answersListViewScreeningBuilderAnswersRecordList =
                                                        snapshot.data!;

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          answersListViewScreeningBuilderAnswersRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          answersListViewIndex) {
                                                        final answersListViewScreeningBuilderAnswersRecord =
                                                            answersListViewScreeningBuilderAnswersRecordList[
                                                                answersListViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      48.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Flexible(
                                                                child: RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text: answersListViewScreeningBuilderAnswersRecord
                                                                            .answer,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            ' ',
                                                                        style:
                                                                            TextStyle(),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '(',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: answersListViewScreeningBuilderAnswersRecord
                                                                            .points
                                                                            .toString(),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            ')',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Theme(
                                                                data: ThemeData(
                                                                  checkboxTheme:
                                                                      CheckboxThemeData(
                                                                    visualDensity:
                                                                        VisualDensity
                                                                            .compact,
                                                                    materialTapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                  unselectedWidgetColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                ),
                                                                child: Checkbox(
                                                                  value: _model
                                                                          .checkboxValueMap[
                                                                      answersListViewScreeningBuilderAnswersRecord] ??= false,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    safeSetState(() =>
                                                                        _model.checkboxValueMap[answersListViewScreeningBuilderAnswersRecord] =
                                                                            newValue!);
                                                                  },
                                                                  side: (FlutterFlowTheme.of(context)
                                                                              .alternate !=
                                                                          null)
                                                                      ? BorderSide(
                                                                          width:
                                                                              2,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                        )
                                                                      : null,
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  checkColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            12.0),
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
                                                                              child: EditScreeningAnswerWidget(
                                                                                answerID: answersListViewScreeningBuilderAnswersRecord.reference,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .edit_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 30.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
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
                      );
                    },
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
