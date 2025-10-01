import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for this page.

  int pageViewTotal = 3;

  int? pageVeiwNext;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, NotificationRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // State field(s) for pageViewBanner widget.
  PageController? pageViewBannerController;

  int get pageViewBannerCurrentIndex => pageViewBannerController != null &&
          pageViewBannerController!.hasClients &&
          pageViewBannerController!.page != null
      ? pageViewBannerController!.page!.round()
      : 0;
  // State field(s) for GridView widget.

  PagingController<DocumentSnapshot?, UserObjectivesRecord>?
      gridViewPagingController2;
  Query? gridViewPagingQuery2;
  List<StreamSubscription?> gridViewStreamSubscriptions2 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    gridViewStreamSubscriptions2.forEach((s) => s?.cancel());
    gridViewPagingController2?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, NotificationRecord> setListViewController(
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

  PagingController<DocumentSnapshot?, NotificationRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, NotificationRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryNotificationRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 3,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, UserObjectivesRecord>
      setGridViewController2(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    gridViewPagingController2 ??= _createGridViewController2(query, parent);
    if (gridViewPagingQuery2 != query) {
      gridViewPagingQuery2 = query;
      gridViewPagingController2?.refresh();
    }
    return gridViewPagingController2!;
  }

  PagingController<DocumentSnapshot?, UserObjectivesRecord>
      _createGridViewController2(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, UserObjectivesRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUserObjectivesRecordPage(
          queryBuilder: (_) => gridViewPagingQuery2 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: gridViewStreamSubscriptions2,
          controller: controller,
          pageSize: 3,
          isStream: true,
        ),
      );
  }
}
