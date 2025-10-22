import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'objectives_widget.dart' show ObjectivesWidget;
import 'package:flutter/material.dart';

class ObjectivesModel extends FlutterFlowModel<ObjectivesWidget> {
  ///  Local state fields for this page.

  bool isUpdating = false;

  double? progressState;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  UserObjectivesRecord? query11;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? contagem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
