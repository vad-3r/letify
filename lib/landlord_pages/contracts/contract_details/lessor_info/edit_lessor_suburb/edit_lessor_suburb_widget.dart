import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'edit_lessor_suburb_model.dart';
export 'edit_lessor_suburb_model.dart';

class EditLessorSuburbWidget extends StatefulWidget {
  const EditLessorSuburbWidget({
    super.key,
    required this.contractID,
  });

  final DocumentReference? contractID;

  @override
  State<EditLessorSuburbWidget> createState() => _EditLessorSuburbWidgetState();
}

class _EditLessorSuburbWidgetState extends State<EditLessorSuburbWidget> {
  late EditLessorSuburbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditLessorSuburbModel());

    _model.suburbTextController ??= TextEditingController();
    _model.suburbFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 370.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      width: 50.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Edit your personal information displayed on the contract\n',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
                            ),
                      ),
                      TextSpan(
                        text: '',
                        style: TextStyle(),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.suburbTextController,
                  focusNode: _model.suburbFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Suburb',
                    hintStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelMediumIsCustom,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 32.0, 20.0, 12.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                  textAlign: TextAlign.start,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  validator:
                      _model.suburbTextControllerValidator.asValidator(context),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 44.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.suburbTextController.text == '') {
                          Navigator.pop(context);
                        } else {
                          await widget.contractID!
                              .update(createContractRecordData(
                            suburb: _model.suburbTextController.text,
                          ));
                          Navigator.pop(context);
                        }
                      },
                      text: 'Done',
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
