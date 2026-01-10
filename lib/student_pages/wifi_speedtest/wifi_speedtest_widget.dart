import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'wifi_speedtest_model.dart';
export 'wifi_speedtest_model.dart';

class WifiSpeedtestWidget extends StatefulWidget {
  const WifiSpeedtestWidget({super.key});

  static String routeName = 'wifi_speedtest';
  static String routePath = '/wifiSpeedtest';

  @override
  State<WifiSpeedtestWidget> createState() => _WifiSpeedtestWidgetState();
}

class _WifiSpeedtestWidgetState extends State<WifiSpeedtestWidget> {
  late WifiSpeedtestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WifiSpeedtestModel());

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
      child: PopScope(
        canPop: false,
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
                context.pushNamed(WiFIWidget.routeName);
              },
            ),
            title: Text(
              'Wi-Fi Speed Test',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineLargeFamily,
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FlutterFlowWebView(
                      content: 'https://fast.com/',
                      bypass: false,
                      width: 1500.0,
                      height: 1000.0,
                      verticalScroll: false,
                      horizontalScroll: false,
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
