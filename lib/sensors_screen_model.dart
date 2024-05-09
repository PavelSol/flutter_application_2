import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'sensors_screen_widget.dart' show SensorsScreenWidget;
import 'package:flutter/material.dart';

class SensorsScreenModel extends FlutterFlowModel<SensorsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}