import '/flutter_flow/flutter_flow_util.dart';
import 'edit_tips_widget.dart' show EditTipsWidget;
import 'package:flutter/material.dart';

class EditTipsModel extends FlutterFlowModel<EditTipsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for titleTipEdit widget.
  FocusNode? titleTipEditFocusNode;
  TextEditingController? titleTipEditTextController;
  String? Function(BuildContext, String?)? titleTipEditTextControllerValidator;
  // State field(s) for detailsTipesEdit widget.
  FocusNode? detailsTipesEditFocusNode;
  TextEditingController? detailsTipesEditTextController;
  String? Function(BuildContext, String?)?
      detailsTipesEditTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleTipEditFocusNode?.dispose();
    titleTipEditTextController?.dispose();

    detailsTipesEditFocusNode?.dispose();
    detailsTipesEditTextController?.dispose();
  }
}
