import '/flutter_flow/flutter_flow_util.dart';
import 'forget_password_widget.dart' show ForgetPasswordWidget;
import 'package:flutter/material.dart';

class ForgetPasswordModel extends FlutterFlowModel<ForgetPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailRecoveryField widget.
  FocusNode? emailRecoveryFieldFocusNode;
  TextEditingController? emailRecoveryFieldTextController;
  String? Function(BuildContext, String?)?
      emailRecoveryFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailRecoveryFieldFocusNode?.dispose();
    emailRecoveryFieldTextController?.dispose();
  }
}
