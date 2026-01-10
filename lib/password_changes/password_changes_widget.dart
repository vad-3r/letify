import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'password_changes_model.dart';
export 'password_changes_model.dart';

class PasswordChangesWidget extends StatefulWidget {
  const PasswordChangesWidget({super.key});

  static String routeName = 'Password_Changes';
  static String routePath = '/passwordChanges';

  @override
  State<PasswordChangesWidget> createState() => _PasswordChangesWidgetState();
}

class _PasswordChangesWidgetState extends State<PasswordChangesWidget> {
  late PasswordChangesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasswordChangesModel());

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
              context.pop();
            },
          ),
          title: Text(
            'Password Change',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineMediumIsCustom,
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
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height,
                          child: custom_widgets.PasswordChangeWidget(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height,
                            onSuccess: () async {},
                          ),
                        ),
                      ),
                    ),
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
