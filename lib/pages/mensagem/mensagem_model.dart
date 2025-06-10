import '/flutter_flow/flutter_flow_util.dart';
import '/pages/mensagemdiret/mensagemdiret_widget.dart';
import 'mensagem_widget.dart' show MensagemWidget;
import 'package:flutter/material.dart';

class MensagemModel extends FlutterFlowModel<MensagemWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for mensagemdiret component.
  late MensagemdiretModel mensagemdiretModel1;
  // Model for mensagemdiret component.
  late MensagemdiretModel mensagemdiretModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    mensagemdiretModel1 = createModel(context, () => MensagemdiretModel());
    mensagemdiretModel2 = createModel(context, () => MensagemdiretModel());
  }

  @override
  void dispose() {
    mensagemdiretModel1.dispose();
    mensagemdiretModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
