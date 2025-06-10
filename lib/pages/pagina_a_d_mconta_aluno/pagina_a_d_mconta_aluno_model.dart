import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_a_d_mconta_aluno_widget.dart' show PaginaADMcontaAlunoWidget;
import 'package:flutter/material.dart';

class PaginaADMcontaAlunoModel
    extends FlutterFlowModel<PaginaADMcontaAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
