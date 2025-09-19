import '/flutter_flow/flutter_flow_util.dart';
import 'tips_create_widget.dart' show TipsCreateWidget;
import 'package:flutter/material.dart';

class TipsCreateModel extends FlutterFlowModel<TipsCreateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for titleTipCreate widget.
  FocusNode? titleTipCreateFocusNode;
  TextEditingController? titleTipCreateTextController;
  String? Function(BuildContext, String?)?
      titleTipCreateTextControllerValidator;
  // State field(s) for tipCreate widget.
  FocusNode? tipCreateFocusNode;
  TextEditingController? tipCreateTextController;
  String? Function(BuildContext, String?)? tipCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleTipCreateFocusNode?.dispose();
    titleTipCreateTextController?.dispose();

    tipCreateFocusNode?.dispose();
    tipCreateTextController?.dispose();
  }
}
