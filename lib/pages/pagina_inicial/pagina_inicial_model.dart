import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'pagina_inicial_widget.dart' show PaginaInicialWidget;
import 'package:flutter/material.dart';

class PaginaInicialModel extends FlutterFlowModel<PaginaInicialWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? Tempo;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    Tempo?.cancel();
  }
}
