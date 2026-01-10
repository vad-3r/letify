import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'manage_permissions_contracts_model.dart';
export 'manage_permissions_contracts_model.dart';

class ManagePermissionsContractsWidget extends StatefulWidget {
  const ManagePermissionsContractsWidget({
    super.key,
    this.parameter1,
  });

  final List<String>? parameter1;

  @override
  State<ManagePermissionsContractsWidget> createState() =>
      _ManagePermissionsContractsWidgetState();
}

class _ManagePermissionsContractsWidgetState
    extends State<ManagePermissionsContractsWidget> {
  late ManagePermissionsContractsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManagePermissionsContractsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      multiSelectController: _model.dropDownValueController ??=
          FormListFieldController<String>(
              _model.dropDownValue ??= List<String>.from(
        widget.parameter1 ?? [],
      )),
      options: [
        'Create Contracts',
        'Delete Contracts',
        'Link Contracts',
        'De-Link Contracts',
        'Override Contracts'
      ],
      width: 200.0,
      height: 40.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            letterSpacing: 0.0,
            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
          ),
      hintText: 'Manage',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 2.0,
      borderColor: Colors.transparent,
      borderWidth: 0.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      hidesUnderline: true,
      isOverButton: false,
      isSearchable: false,
      isMultiSelect: true,
      onMultiSelectChanged: (val) =>
          safeSetState(() => _model.dropDownValue = val),
    );
  }
}
