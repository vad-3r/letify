import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'loading_icon_model.dart';
export 'loading_icon_model.dart';

class LoadingIconWidget extends StatefulWidget {
  const LoadingIconWidget({super.key});

  @override
  State<LoadingIconWidget> createState() => _LoadingIconWidgetState();
}

class _LoadingIconWidgetState extends State<LoadingIconWidget> {
  late LoadingIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingIconModel());

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
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(),
        child: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await actions.countdownFromFourReal();
              Navigator.pop(context);
            },
            child: Lottie.asset(
              'assets/jsons/Animation_-_1747639245681.json',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.contain,
              animate: true,
            ),
          ),
        ),
      ),
    );
  }
}
