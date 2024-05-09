import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';


import 'movement_model.dart';
export 'movement_model.dart';

class MovementWidget extends StatefulWidget {
  const MovementWidget({super.key});

  @override
  State<MovementWidget> createState() => _MovementWidgetState();
}

class _MovementWidgetState extends State<MovementWidget> {
  late MovementModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MovementModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
      child: Container(
        width: 240,
        height: 287,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: FFButtonWidget(
                onPressed: () {
                  print('Up_button pressed ...');
                },
                text: '',
                icon: Icon(
                  Icons.arrow_upward,
                  size: 30,
                ),
                options: FFButtonOptions(
                  height: 40,
                  padding: EdgeInsets.all(4),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Left_button pressed ...');
                    },
                    text: '',
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsets.all(4),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Right_button pressed ...');
                    },
                    text: '',
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 30,
                    ),
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsets.all(4),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Back_button pressed ...');
                    },
                    text: '',
                    icon: Icon(
                      Icons.arrow_downward,
                      size: 30,
                    ),
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsets.all(4),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
