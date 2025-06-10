import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'criar_conta_aluno_widget.dart' show CriarContaAlunoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriarContaAlunoModel extends FlutterFlowModel<CriarContaAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Emailcreate widget.
  FocusNode? emailcreateFocusNode;
  TextEditingController? emailcreateTextController;
  String? Function(BuildContext, String?)? emailcreateTextControllerValidator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode1;
  TextEditingController? nomeTextController1;
  String? Function(BuildContext, String?)? nomeTextController1Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode2;
  TextEditingController? nomeTextController2;
  String? Function(BuildContext, String?)? nomeTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? passwordTextController;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  late MaskTextInputFormatter textFieldMask4;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    emailcreateFocusNode?.dispose();
    emailcreateTextController?.dispose();

    nomeFocusNode1?.dispose();
    nomeTextController1?.dispose();

    nomeFocusNode2?.dispose();
    nomeTextController2?.dispose();

    textFieldFocusNode1?.dispose();
    passwordTextController?.dispose();

    textFieldFocusNode2?.dispose();
    confirmPasswordTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();
  }
}
