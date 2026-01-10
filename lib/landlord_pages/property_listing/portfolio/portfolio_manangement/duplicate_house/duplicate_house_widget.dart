import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'duplicate_house_model.dart';
export 'duplicate_house_model.dart';

class DuplicateHouseWidget extends StatefulWidget {
  const DuplicateHouseWidget({
    super.key,
    required this.propertyID,
  });

  final DocumentReference? propertyID;

  @override
  State<DuplicateHouseWidget> createState() => _DuplicateHouseWidgetState();
}

class _DuplicateHouseWidgetState extends State<DuplicateHouseWidget>
    with TickerProviderStateMixin {
  late DuplicateHouseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DuplicateHouseModel());

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
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
        child: Container(
          width: 450.0,
          height: 350.0,
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
                  child: StreamBuilder<PropertyRecord>(
                    stream: PropertyRecord.getDocument(widget.propertyID!),
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

                      final columnPropertyRecord = snapshot.data!;

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Duplicate Property',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 4.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Divider(
                                        thickness: 2.0,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
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
                                      Flexible(
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: columnPropertyRecord
                                                    .propertyName,
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
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 200.0,
                                        child: TextFormField(
                                          controller: _model.textController ??=
                                              TextEditingController(
                                            text: functions.nameConcat(
                                                columnPropertyRecord
                                                    .propertyName,
                                                '(duplicate)'),
                                          ),
                                          focusNode: _model.textFieldFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
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
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            hintText: 'Duplicate Name',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          maxLines: null,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 6.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Please be papatient, process might take some time depending on amount of rooms in property being duplicated',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  var propertyRecordReference =
                                      PropertyRecord.collection.doc();
                                  await propertyRecordReference
                                      .set(createPropertyRecordData(
                                    propertyName: _model.textController.text,
                                    propertyAddress:
                                        columnPropertyRecord.propertyAddress,
                                    propertyDescription: columnPropertyRecord
                                        .propertyDescription,
                                    portfolioId:
                                        columnPropertyRecord.portfolioId,
                                    numberOfRooms: columnPropertyRecord
                                        .roomsInProperty.length,
                                    propertyType:
                                        columnPropertyRecord.propertyType,
                                    propertySuburb:
                                        columnPropertyRecord.propertySuburb,
                                    propertyCity:
                                        columnPropertyRecord.propertyCity,
                                    propertyZipcode:
                                        columnPropertyRecord.propertyZipcode,
                                    landlordId: columnPropertyRecord.landlordId,
                                    propertyID: random_data.randomString(
                                      12,
                                      12,
                                      true,
                                      true,
                                      true,
                                    ),
                                  ));
                                  _model.dupe =
                                      PropertyRecord.getDocumentFromData(
                                          createPropertyRecordData(
                                            propertyName:
                                                _model.textController.text,
                                            propertyAddress:
                                                columnPropertyRecord
                                                    .propertyAddress,
                                            propertyDescription:
                                                columnPropertyRecord
                                                    .propertyDescription,
                                            portfolioId: columnPropertyRecord
                                                .portfolioId,
                                            numberOfRooms: columnPropertyRecord
                                                .roomsInProperty.length,
                                            propertyType: columnPropertyRecord
                                                .propertyType,
                                            propertySuburb: columnPropertyRecord
                                                .propertySuburb,
                                            propertyCity: columnPropertyRecord
                                                .propertyCity,
                                            propertyZipcode:
                                                columnPropertyRecord
                                                    .propertyZipcode,
                                            landlordId:
                                                columnPropertyRecord.landlordId,
                                            propertyID:
                                                random_data.randomString(
                                              12,
                                              12,
                                              true,
                                              true,
                                              true,
                                            ),
                                          ),
                                          propertyRecordReference);

                                  await columnPropertyRecord.portfolioId!
                                      .update({
                                    ...mapToFirestore(
                                      {
                                        'properties': FieldValue.arrayUnion(
                                            [_model.dupe?.reference]),
                                      },
                                    ),
                                  });
                                  while (FFAppState().i <
                                      columnPropertyRecord
                                          .roomsInProperty.length) {
                                    var roomRecordReference =
                                        RoomRecord.collection.doc();
                                    await roomRecordReference
                                        .set(createRoomRecordData(
                                      propertyId: _model.dupe?.reference,
                                      roomName: functions
                                          .indexIndentForName(FFAppState().i)
                                          .toString(),
                                      roomStatus: 'Vacant',
                                      roomId: random_data.randomString(
                                        12,
                                        12,
                                        true,
                                        true,
                                        true,
                                      ),
                                      roomIndex: functions
                                          .indexIndentForName(FFAppState().i),
                                    ));
                                    _model.createdRoom =
                                        RoomRecord.getDocumentFromData(
                                            createRoomRecordData(
                                              propertyId:
                                                  _model.dupe?.reference,
                                              roomName: functions
                                                  .indexIndentForName(
                                                      FFAppState().i)
                                                  .toString(),
                                              roomStatus: 'Vacant',
                                              roomId: random_data.randomString(
                                                12,
                                                12,
                                                true,
                                                true,
                                                true,
                                              ),
                                              roomIndex:
                                                  functions.indexIndentForName(
                                                      FFAppState().i),
                                            ),
                                            roomRecordReference);

                                    await _model.dupe!.reference.update({
                                      ...mapToFirestore(
                                        {
                                          'roomsInProperty':
                                              FieldValue.arrayUnion([
                                            _model.createdRoom?.reference
                                          ]),
                                        },
                                      ),
                                    });
                                    FFAppState().i = FFAppState().i + 1;
                                    safeSetState(() {});
                                  }
                                  FFAppState().i = 0;
                                  safeSetState(() {});
                                  Navigator.pop(context);

                                  safeSetState(() {});
                                },
                                text: 'Done',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(22.0),
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
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
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
