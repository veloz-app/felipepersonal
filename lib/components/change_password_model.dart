import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for passwordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // State field(s) for confirmPasswordField widget.
  FocusNode? confirmPasswordFieldFocusNode;
  TextEditingController? confirmPasswordFieldTextController;
  late bool confirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
    confirmPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();

    confirmPasswordFieldFocusNode?.dispose();
    confirmPasswordFieldTextController?.dispose();
  }
}
