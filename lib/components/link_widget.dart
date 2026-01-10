import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'link_model.dart';
export 'link_model.dart';

class LinkWidget extends StatefulWidget {
  const LinkWidget({
    super.key,
    required this.propertyID,
    required this.propertyName,
    required this.roomID,
    required this.roomName,
  });

  final DocumentReference? propertyID;
  final String? propertyName;
  final DocumentReference? roomID;
  final String? roomName;

  @override
  State<LinkWidget> createState() => _LinkWidgetState();
}

class _LinkWidgetState extends State<LinkWidget> with TickerProviderStateMixin {
  late LinkModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkModel());

    _model.studentNumTextController ??= TextEditingController();
    _model.studentNumFocusNode ??= FocusNode();

    _model.tenantEmailTextController ??= TextEditingController();
    _model.tenantEmailFocusNode ??= FocusNode();

    _model.switchValue = false;
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 16.0, 16.0),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 670.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12.0,
                    color: Color(0x1E000000),
                    offset: Offset(
                      0.0,
                      5.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 0.0, 0.0),
                    child: Text(
                      'Tenant Link',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineMediumIsCustom,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 0.0),
                    child: Text(
                      'Link Tenant',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 0.0),
                                child: Container(
                                  width: 500.0,
                                  child: TextFormField(
                                    controller: _model.studentNumTextController,
                                    focusNode: _model.studentNumFocusNode,
                                    autofocus: true,
                                    autofillHints: [AutofillHints.username],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Student Number',
                                      labelStyle: FlutterFlowTheme.of(context)
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
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
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
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .studentNumTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.switchValue == true)
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 0.0),
                                  child: Container(
                                    width: 500.0,
                                    child: TextFormField(
                                      controller:
                                          _model.tenantEmailTextController,
                                      focusNode: _model.tenantEmailFocusNode,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.username],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Student Email Address',
                                        labelStyle: FlutterFlowTheme.of(context)
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
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
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
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .tenantEmailTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Send Tenant Email (optional)',
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
                              Switch.adaptive(
                                value: _model.switchValue!,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.switchValue = newValue);
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveTrackColor:
                                    FlutterFlowTheme.of(context).secondary,
                                inactiveThumbColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ],
                          ),
                        ),
                        if (_model.doesNotExist ?? true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 10.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Student Number is not registered with any user',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.alreadyLinked)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 10.0, 16.0, 0.0),
                            child: StreamBuilder<List<StudentRecord>>(
                              stream: queryStudentRecord(
                                queryBuilder: (studentRecord) =>
                                    studentRecord.where(
                                  'student_number',
                                  isEqualTo:
                                      _model.studentNumTextController.text,
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<StudentRecord> rowStudentRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final rowStudentRecord =
                                    rowStudentRecordList.isNotEmpty
                                        ? rowStudentRecordList.first
                                        : null;

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Tenant already Linked in a property: \n',
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
                                                        .error,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                rowStudentRecord?.propertyName,
                                                'property',
                                              ),
                                              style: TextStyle(),
                                            )
                                          ],
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
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
                  if (_model.alreadyLinked)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 6.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Is tenant being booked to this room?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              _model.student = await queryStudentRecordOnce(
                                queryBuilder: (studentRecord) =>
                                    studentRecord.where(
                                  'student_number',
                                  isEqualTo:
                                      _model.studentNumTextController.text,
                                ),
                                singleRecord: true,
                              ).then((s) => s.firstOrNull);
                              if (_model.student?.hasBooked == true) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return WebViewAware(
                                      child: AlertDialog(
                                        content: Text(
                                            'Student has already been booked'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              } else {
                                _model.userCopy = await queryUserRecordOnce(
                                  queryBuilder: (userRecord) =>
                                      userRecord.where(
                                    'uid',
                                    isEqualTo: _model.studentsOnSystem
                                        ?.firstOrNull?.studentId?.id,
                                  ),
                                  singleRecord: true,
                                ).then((s) => s.firstOrNull);

                                await _model.student!.reference
                                    .update(createStudentRecordData(
                                  hasBooked: true,
                                  bookedOwner: currentUserReference,
                                  bookedPropertyId: widget.propertyID,
                                  bookedPropertyName: widget.propertyName,
                                  bookedRoomName: widget.roomName,
                                  bookedRoom: widget.roomID,
                                ));

                                await widget.roomID!
                                    .update(createRoomRecordData(
                                  tenantInRoom: _model
                                      .studentsOnSystem?.firstOrNull?.studentId,
                                  roomStatus: 'Occupied',
                                  tenantName: _model.userCopy?.displayName,
                                  tenantStudentNum: _model.studentsOnSystem
                                      ?.firstOrNull?.studentNumber,
                                  tenantSurname: functions.nameConcat(
                                      _model.userCopy?.userSurname, '(booked)'),
                                  isGenerated: false,
                                  newLinkTimestamp: getCurrentTimestamp,
                                  fullyBooked: true,
                                ));

                                await widget.propertyID!.update({
                                  ...mapToFirestore(
                                    {
                                      'booked_tenants': FieldValue.arrayUnion(
                                          [_model.student?.studentId]),
                                    },
                                  ),
                                });

                                await _model.userCopy!.reference
                                    .update(createUserRecordData());
                                triggerPushNotification(
                                  notificationTitle: 'Booked a  Room',
                                  notificationText: functions.nameConcatCopy(
                                      'You have been linked to room ',
                                      widget.roomName,
                                      widget.propertyName)!,
                                  notificationImageUrl:
                                      FFAppConstants.letifyLogo,
                                  notificationSound: 'default',
                                  userRefs: [currentUserReference!],
                                  initialPageName: 'Student_Dashboard1',
                                  parameterData: {},
                                );
                                Navigator.pop(context);
                              }

                              safeSetState(() {});
                            },
                            text: 'Yes',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
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
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.05),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              height: 44.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
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
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              hoverColor:
                                  FlutterFlowTheme.of(context).alternate,
                              hoverBorderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              hoverTextColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              hoverElevation: 3.0,
                            ),
                          ),
                        ),
                        if (!_model.alreadyLinked)
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  _model.studentsOnSystem =
                                      await queryStudentRecordOnce(
                                    queryBuilder: (studentRecord) =>
                                        studentRecord.where(
                                      'student_number',
                                      isEqualTo:
                                          _model.studentNumTextController.text,
                                    ),
                                    limit: 1,
                                  );
                                  if (_model.studentsOnSystem?.length == 0) {
                                    _model.doesNotExist = true;
                                    safeSetState(() {});
                                  } else {
                                    if (_model.studentsOnSystem?.firstOrNull
                                            ?.linkedToProperty ==
                                        true) {
                                      _model.alreadyLinked = true;
                                      safeSetState(() {});
                                    } else {
                                      _model.user = await queryUserRecordOnce(
                                        queryBuilder: (userRecord) =>
                                            userRecord.where(
                                          'uid',
                                          isEqualTo: _model.studentsOnSystem
                                              ?.firstOrNull?.studentId?.id,
                                        ),
                                        singleRecord: true,
                                      ).then((s) => s.firstOrNull);

                                      await _model.studentsOnSystem!
                                          .firstOrNull!.reference
                                          .update(createStudentRecordData(
                                        linkedToProperty: true,
                                        propertyId: widget.propertyID,
                                        propertyName: widget.propertyName,
                                        tenantName: _model.user?.displayName,
                                        tenantSurname: _model.user?.userSurname,
                                        owner: currentUserReference,
                                        roomOccupied: widget.roomName,
                                        roomId: widget.roomID,
                                      ));

                                      await widget.roomID!
                                          .update(createRoomRecordData(
                                        tenantInRoom: _model.studentsOnSystem
                                            ?.firstOrNull?.studentId,
                                        roomStatus: 'Occupied',
                                        tenantName: _model.user?.displayName,
                                        tenantStudentNum: _model
                                            .studentsOnSystem
                                            ?.firstOrNull
                                            ?.studentNumber,
                                        tenantSurname: _model.user?.userSurname,
                                        isGenerated: false,
                                        newLinkTimestamp: getCurrentTimestamp,
                                      ));

                                      await widget.propertyID!.update({
                                        ...mapToFirestore(
                                          {
                                            'studentsInProperty':
                                                FieldValue.arrayUnion([
                                              _model.studentsOnSystem
                                                  ?.firstOrNull?.reference
                                            ]),
                                            'studentInProperty':
                                                FieldValue.arrayUnion(
                                                    [_model.user?.reference]),
                                          },
                                        ),
                                      });

                                      await _model.user!.reference
                                          .update(createUserRecordData(
                                        propertyId: widget.propertyID,
                                        linkedToProperty: true,
                                      ));
                                      triggerPushNotification(
                                        notificationTitle: 'Linked To Room',
                                        notificationText:
                                            functions.nameConcatCopy(
                                                'You have been linked to room ',
                                                widget.roomName,
                                                widget.propertyName)!,
                                        notificationImageUrl:
                                            FFAppConstants.letifyLogo,
                                        notificationSound: 'default',
                                        userRefs: [_model.user!.reference],
                                        initialPageName: 'Student_Dashboard1',
                                        parameterData: {},
                                      );
                                      Navigator.pop(context);
                                    }
                                  }

                                  safeSetState(() {});
                                },
                                text: 'Done',
                                options: FFButtonOptions(
                                  height: 44.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  hoverBorderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  hoverElevation: 0.0,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        ],
      ),
    );
  }
}
