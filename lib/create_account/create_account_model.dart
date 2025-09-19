import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailCreateLogin widget.
  FocusNode? emailCreateLoginFocusNode;
  TextEditingController? emailCreateLoginTextController;
  String? Function(BuildContext, String?)?
      emailCreateLoginTextControllerValidator;
  // State field(s) for nameCreateLogin widget.
  FocusNode? nameCreateLoginFocusNode;
  TextEditingController? nameCreateLoginTextController;
  String? Function(BuildContext, String?)?
      nameCreateLoginTextControllerValidator;
  // State field(s) for passwordCraeteLogin widget.
  FocusNode? passwordCraeteLoginFocusNode;
  TextEditingController? passwordCraeteLoginTextController;
  late bool passwordCraeteLoginVisibility;
  String? Function(BuildContext, String?)?
      passwordCraeteLoginTextControllerValidator;
  // State field(s) for passwordConfirmCreateLogin widget.
  FocusNode? passwordConfirmCreateLoginFocusNode;
  TextEditingController? passwordConfirmCreateLoginTextController;
  late bool passwordConfirmCreateLoginVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmCreateLoginTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCraeteLoginVisibility = false;
    passwordConfirmCreateLoginVisibility = false;
  }

  @override
  void dispose() {
    emailCreateLoginFocusNode?.dispose();
    emailCreateLoginTextController?.dispose();

    nameCreateLoginFocusNode?.dispose();
    nameCreateLoginTextController?.dispose();

    passwordCraeteLoginFocusNode?.dispose();
    passwordCraeteLoginTextController?.dispose();

    passwordConfirmCreateLoginFocusNode?.dispose();
    passwordConfirmCreateLoginTextController?.dispose();
  }
}
