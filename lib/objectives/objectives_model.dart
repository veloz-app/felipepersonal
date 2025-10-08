import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'objectives_widget.dart' show ObjectivesWidget;
import 'package:flutter/material.dart';

class ObjectivesModel extends FlutterFlowModel<ObjectivesWidget> {
  ///  Local state fields for this page.

  double currentProgressState = 0.0;

  double finalGoalValue = 1.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in objectives widget.
  UserObjectivesRecord? query1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? contagem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
