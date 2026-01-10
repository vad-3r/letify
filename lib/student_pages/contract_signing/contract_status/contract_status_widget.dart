import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/landlord_pages/property_listing/portfolio/agent_linking/prohibit/prohibit_widget.dart';
import '/student_pages/contract_signing/denial/denial_widget.dart';
import '/student_pages/contract_signing/edit_documents/edit_documents_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'contract_status_model.dart';
export 'contract_status_model.dart';

class ContractStatusWidget extends StatefulWidget {
  const ContractStatusWidget({
    super.key,
    required this.tenantInfo,
    required this.contractID,
    this.tenantContract,
    this.contractIDString,
  });

  final DocumentReference? tenantInfo;
  final DocumentReference? contractID;
  final DocumentReference? tenantContract;
  final String? contractIDString;

  @override
  State<ContractStatusWidget> createState() => _ContractStatusWidgetState();
}

class _ContractStatusWidgetState extends State<ContractStatusWidget>
    with TickerProviderStateMixin {
  late ContractStatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContractStatusModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
        child: StreamBuilder<List<ContractRecord>>(
          stream: queryContractRecord(
            queryBuilder: (contractRecord) => contractRecord.where(
              'contract_id',
              isEqualTo: widget.contractIDString,
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
            List<ContractRecord> cardReview1ContractRecordList = snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final cardReview1ContractRecord =
                cardReview1ContractRecordList.isNotEmpty
                    ? cardReview1ContractRecordList.first
                    : null;

            return Container(
              width: 700.0,
              height: 400.0,
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
                      child: StreamBuilder<List<TenantInfoRecord>>(
                        stream: queryTenantInfoRecord(
                          parent: widget.contractID,
                          queryBuilder: (tenantInfoRecord) =>
                              tenantInfoRecord.where(
                            'tenant_id',
                            isEqualTo: widget.tenantInfo,
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
                          List<TenantInfoRecord> columnTenantInfoRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final columnTenantInfoRecord =
                              columnTenantInfoRecordList.isNotEmpty
                                  ? columnTenantInfoRecordList.first
                                  : null;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Contract Status',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    if ((columnTenantInfoRecord?.isApproved == true) &&
                                        (columnTenantInfoRecord?.isReviewed ==
                                            true) &&
                                        (columnTenantInfoRecord?.isSigned ==
                                            true))
                                      Text(
                                        'Approved',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    if ((columnTenantInfoRecord?.isApproved == true) &&
                                        (columnTenantInfoRecord?.isReviewed ==
                                            true) &&
                                        (columnTenantInfoRecord?.isSigned ==
                                            true))
                                      FFButtonWidget(
                                        onPressed: () async {
                                          if (valueOrDefault<bool>(
                                                  currentUserDocument
                                                      ?.downloadContract,
                                                  false) ==
                                              false) {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: ProhibitWidget(),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          } else {
                                            await actions
                                                .generateContractPDFTenant(
                                              cardReview1ContractRecord!
                                                  .lessorName,
                                              cardReview1ContractRecord.idNum,
                                              cardReview1ContractRecord
                                                  .streetAddress,
                                              cardReview1ContractRecord.suburb,
                                              cardReview1ContractRecord.city,
                                              cardReview1ContractRecord
                                                  .postalCode,
                                              cardReview1ContractRecord.eMail,
                                              cardReview1ContractRecord
                                                  .telPhone,
                                              functions.nameConcat(
                                                  columnTenantInfoRecord
                                                      ?.lesseeName,
                                                  columnTenantInfoRecord
                                                      ?.lesseeSurname)!,
                                              columnTenantInfoRecord!
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
                                              columnTenantInfoRecord.roomName,
                                              functions.nameConcat(
                                                  columnTenantInfoRecord
                                                      .prtpName,
                                                  columnTenantInfoRecord
                                                      .prtpSurname)!,
                                              columnTenantInfoRecord.prtpIdNum,
                                              columnTenantInfoRecord
                                                  .prtpStreetAddress,
                                              columnTenantInfoRecord.prtpDob,
                                              columnTenantInfoRecord.prtpCity,
                                              columnTenantInfoRecord
                                                  .prtpPostalCode,
                                              columnTenantInfoRecord.prtpEmail,
                                              columnTenantInfoRecord.prtpTel,
                                              functions.nameConcat(
                                                  columnTenantInfoRecord
                                                      .nokName,
                                                  columnTenantInfoRecord
                                                      .nokSurnam)!,
                                              columnTenantInfoRecord.nokIdNum,
                                              columnTenantInfoRecord
                                                  .nokStreetAddress,
                                              columnTenantInfoRecord
                                                  .nokProvince,
                                              columnTenantInfoRecord.nokCity,
                                              columnTenantInfoRecord
                                                  .nokPostalCode,
                                              columnTenantInfoRecord.nokEmail,
                                              columnTenantInfoRecord.nokTel,
                                              columnTenantInfoRecord
                                                  .propertyName,
                                              columnTenantInfoRecord
                                                  .lesseeStudentNum,
                                              cardReview1ContractRecord
                                                  .topTen1,
                                              cardReview1ContractRecord
                                                  .topTen2,
                                              cardReview1ContractRecord
                                                  .topTen3,
                                              cardReview1ContractRecord
                                                  .topTen4,
                                              cardReview1ContractRecord
                                                  .topTen5,
                                              cardReview1ContractRecord
                                                  .topTen6,
                                              cardReview1ContractRecord
                                                  .topTen7,
                                              cardReview1ContractRecord
                                                  .topTen8,
                                              cardReview1ContractRecord
                                                  .topTen9,
                                              cardReview1ContractRecord
                                                  .topTen10,
                                              cardReview1ContractRecord
                                                  .contractId,
                                              cardReview1ContractRecord
                                                  .startDate!,
                                              cardReview1ContractRecord
                                                  .endDate!,
                                              cardReview1ContractRecord
                                                  .montlyRent,
                                              cardReview1ContractRecord
                                                  .electricityRules,
                                              cardReview1ContractRecord
                                                  .waterRules,
                                              cardReview1ContractRecord
                                                  .geyserRules,
                                              cardReview1ContractRecord
                                                  .roomType,
                                              cardReview1ContractRecord
                                                  .adminFee,
                                              cardReview1ContractRecord
                                                  .refundableFee,
                                              cardReview1ContractRecord
                                                  .deposit,
                                              cardReview1ContractRecord
                                                  .keyDeposit,
                                              cardReview1ContractRecord
                                                  .customRoomType,
                                              columnTenantInfoRecord
                                                  .tenantSignature,
                                              FFAppConstants.logoString,
                                              cardReview1ContractRecord
                                                  .houseRules,
                                              functions.convertToString(
                                                  columnTenantInfoRecord
                                                      .copyOfId),
                                              functions.convertToString(
                                                  columnTenantInfoRecord
                                                      .copyOfStudentCard),
                                              FFAppConstants.llwelynStamp,
                                              cardReview1ContractRecord
                                                  .signatureimagepath,
                                              cardReview1ContractRecord
                                                  .signature1Url,
                                              cardReview1ContractRecord
                                                  .signature2Url,
                                              cardReview1ContractRecord
                                                  .lessorInitials,
                                            );
                                          }
                                        },
                                        text: 'View',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    if ((columnTenantInfoRecord?.isReviewed ==
                                            true) &&
                                        (columnTenantInfoRecord?.isApproved ==
                                            false) &&
                                        (columnTenantInfoRecord?.isSigned ==
                                            true))
                                      Text(
                                        'Denied',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    if ((columnTenantInfoRecord?.denialReason != null &&
                                            columnTenantInfoRecord
                                                    ?.denialReason !=
                                                '') &&
                                        (columnTenantInfoRecord?.isApproved ==
                                            false) &&
                                        (columnTenantInfoRecord?.isReviewed ==
                                            true) &&
                                        (columnTenantInfoRecord?.isSigned ==
                                            true))
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: DenialWidget(
                                                    tenantInfo:
                                                        columnTenantInfoRecord!
                                                            .tenantId!,
                                                    contractID:
                                                        cardReview1ContractRecord!
                                                            .reference,
                                                    tenantContract:
                                                        columnTenantInfoRecord
                                                            .reference,
                                                    contractIDString: widget
                                                        .contractIDString,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        text: 'Comments',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    if ((columnTenantInfoRecord?.isReviewed ==
                                            false) &&
                                        (columnTenantInfoRecord?.isSigned ==
                                            true))
                                      Text(
                                        'Submitted',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    if ((columnTenantInfoRecord?.isOverride ==
                                            true) &&
                                        ((columnTenantInfoRecord
                                                        ?.copyOfStudentCard ==
                                                    null ||
                                                columnTenantInfoRecord
                                                        ?.copyOfStudentCard ==
                                                    '') ||
                                            (columnTenantInfoRecord?.copyOfId ==
                                                    null ||
                                                columnTenantInfoRecord
                                                        ?.copyOfId ==
                                                    '')) &&
                                        (columnTenantInfoRecord?.isSigned ==
                                            true))
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: EditDocumentsWidget(
                                                    tenantInfoID:
                                                        columnTenantInfoRecord!
                                                            .reference,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        text: 'Upload Outstanding Documents',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
            );
          },
        ),
      ),
    );
  }
}
