import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'alternative_training_widget.dart' show AlternativeTrainingWidget;
import 'package:flutter/material.dart';

class AlternativeTrainingModel
    extends FlutterFlowModel<AlternativeTrainingWidget> {
  ///  Local state fields for this page.

  String? userLikeDoc;

  int? currentIndex = 0;

  DateTime? dataCalculator;

  int? duracaoDesafio;

  String? tempoRestanteString;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
