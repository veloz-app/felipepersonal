import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailADM widget.
  FocusNode? emailADMFocusNode;
  TextEditingController? emailADMTextController;
  String? Function(BuildContext, String?)? emailADMTextControllerValidator;
  // State field(s) for SenhaADM widget.
  FocusNode? senhaADMFocusNode;
  TextEditingController? senhaADMTextController;
  late bool senhaADMVisibility;
  String? Function(BuildContext, String?)? senhaADMTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaADMVisibility = false;
  }

  @override
  void dispose() {
    emailADMFocusNode?.dispose();
    emailADMTextController?.dispose();

    senhaADMFocusNode?.dispose();
    senhaADMTextController?.dispose();
  }
}
