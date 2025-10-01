import '/backend/backend.dart';
import '/components/challenger_timer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'alternative_training_widget.dart' show AlternativeTrainingWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AlternativeTrainingModel
    extends FlutterFlowModel<AlternativeTrainingWidget> {
  ///  Local state fields for this page.

  String? userLikeDoc;

  int? currentIndex = 0;

  DateTime? dataCalculator;

  int? duracaoDesafio;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, AlternativeTrainingRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Models for ChallengerTimer dynamic component.
  late FlutterFlowDynamicModels<ChallengerTimerModel> challengerTimerModels;

  @override
  void initState(BuildContext context) {
    challengerTimerModels =
        FlutterFlowDynamicModels(() => ChallengerTimerModel());
  }

  @override
  void dispose() {
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    challengerTimerModels.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, AlternativeTrainingRecord>
      setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, AlternativeTrainingRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, AlternativeTrainingRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryAlternativeTrainingRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 10,
          isStream: true,
        ),
      );
  }
}
