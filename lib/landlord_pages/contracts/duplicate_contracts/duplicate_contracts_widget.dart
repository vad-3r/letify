import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'duplicate_contracts_model.dart';
export 'duplicate_contracts_model.dart';

class DuplicateContractsWidget extends StatefulWidget {
  const DuplicateContractsWidget({
    super.key,
    required this.contractName,
    required this.lessorName,
    required this.companyID,
    required this.streetAddress,
    required this.suburb,
    required this.city,
    required this.postalCode,
    required this.email,
    required this.telPhone,
    required this.startDate,
    required this.endDate,
    required this.monthlyRent,
    required this.electricityRules,
    required this.waterRules,
    required this.lessorSignature,
    required this.lessorSignaturePath,
    required this.landlordID,
    required this.roomType,
    required this.topTen1,
    required this.topTen2,
    required this.topTen3,
    required this.topTen4,
    required this.topTen5,
    required this.topTen6,
    required this.topTen7,
    required this.topTen8,
    required this.topTen9,
    required this.topTen10,
    required this.signature1URL,
    required this.signature2URL,
    required this.adminFee,
    required this.refundableFee,
    required this.deposit,
    required this.keyDeposit,
    required this.customRoomType,
    required this.geyserRules,
    required this.houseRules,
    required this.witnessImage1,
    required this.witnessImage2,
  });

  final String? contractName;
  final String? lessorName;
  final String? companyID;
  final String? streetAddress;
  final String? suburb;
  final String? city;
  final String? postalCode;
  final String? email;
  final String? telPhone;
  final DateTime? startDate;
  final DateTime? endDate;
  final double? monthlyRent;
  final String? electricityRules;
  final String? waterRules;
  final String? lessorSignature;
  final String? lessorSignaturePath;
  final DocumentReference? landlordID;
  final String? roomType;
  final String? topTen1;
  final String? topTen2;
  final String? topTen3;
  final String? topTen4;
  final String? topTen5;
  final String? topTen6;
  final String? topTen7;
  final String? topTen8;
  final String? topTen9;
  final String? topTen10;
  final String? signature1URL;
  final String? signature2URL;
  final double? adminFee;
  final double? refundableFee;
  final double? deposit;
  final double? keyDeposit;
  final String? customRoomType;
  final String? geyserRules;
  final String? houseRules;
  final String? witnessImage1;
  final String? witnessImage2;

  @override
  State<DuplicateContractsWidget> createState() =>
      _DuplicateContractsWidgetState();
}

class _DuplicateContractsWidgetState extends State<DuplicateContractsWidget> {
  late DuplicateContractsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DuplicateContractsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 60.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 350.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          thickness: 3.0,
                          indent: 150.0,
                          endIndent: 150.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 16.0, 0.0),
                                child: Text(
                                  'Duplicate Contract',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 80.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Are you sure you want to duplicate this contract?',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 44.0, 0.0, 44.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: 'Cancel',
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await ContractRecord.collection
                                          .doc()
                                          .set(createContractRecordData(
                                            lessorName: widget.lessorName,
                                            idNum: widget.companyID,
                                            streetAddress:
                                                widget.streetAddress,
                                            suburb: widget.suburb,
                                            city: widget.city,
                                            postalCode: widget.postalCode,
                                            eMail: widget.email,
                                            telPhone: widget.telPhone,
                                            startDate: widget.startDate,
                                            endDate: widget.endDate,
                                            montlyRent: widget.monthlyRent,
                                            electricityRules:
                                                widget.electricityRules,
                                            waterRules: widget.waterRules,
                                            lessorSignature:
                                                widget.lessorSignature,
                                            landlordId: widget.landlordID,
                                            signatureimagepath:
                                                widget.lessorSignaturePath,
                                            roomType: widget.roomType,
                                            topTen1: widget.topTen1,
                                            topTen2: widget.topTen2,
                                            topTen3: widget.topTen3,
                                            topTen4: widget.topTen4,
                                            topTen5: widget.topTen5,
                                            topTen6: widget.topTen6,
                                            topTen7: widget.topTen7,
                                            topTen8: widget.topTen8,
                                            topTen9: widget.topTen9,
                                            topTen10: widget.topTen10,
                                            signature1Url:
                                                widget.signature1URL,
                                            signature2Url:
                                                widget.signature2URL,
                                            adminFee: widget.adminFee,
                                            refundableFee:
                                                widget.refundableFee,
                                            deposit: widget.deposit,
                                            keyDeposit: widget.keyDeposit,
                                            customRoomType:
                                                widget.customRoomType,
                                            contractName: functions.nameConcat(
                                                widget.contractName,
                                                '(Duplicate)'),
                                            contractId:
                                                random_data.randomString(
                                              12,
                                              12,
                                              true,
                                              false,
                                              false,
                                            ),
                                            geyserRules: widget.geyserRules,
                                            houseRules: widget.houseRules,
                                            witness1Image:
                                                widget.witnessImage1,
                                            witness2Image:
                                                widget.witnessImage2,
                                          ));
                                      Navigator.pop(context);
                                    },
                                    text: 'Yes',
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.lexendDeca(
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
