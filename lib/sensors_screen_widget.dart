import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';


import 'sensors_screen_model.dart';
export 'sensors_screen_model.dart';

class SensorsScreenWidget extends StatefulWidget {
  const SensorsScreenWidget({super.key});

  @override
  State<SensorsScreenWidget> createState() => _SensorsScreenWidgetState();
}

class _SensorsScreenWidgetState extends State<SensorsScreenWidget> {
  late SensorsScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SensorsScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: true,
                title: Text(
                  'Sensors',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 2,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
