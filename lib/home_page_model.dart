import '/components/action_widget.dart';
import '/components/movement_widget.dart';
import '/components/sensors_widget.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';


class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Movement component.
  late MovementModel movementModel;
  // Model for Action component.
  late ActionModel actionModel;
  // Model for Sensors component.
  late SensorsModel sensorsModel;

  @override
  void initState(BuildContext context) {
    movementModel = createModel(context, () => MovementModel());
    actionModel = createModel(context, () => ActionModel());
    sensorsModel = createModel(context, () => SensorsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    movementModel.dispose();
    actionModel.dispose();
    sensorsModel.dispose();
  }
}
