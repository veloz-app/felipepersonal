import '/flutter_flow/flutter_flow_util.dart';
import 'edit_objective_user_widget.dart' show EditObjectiveUserWidget;
import 'package:flutter/material.dart';

class EditObjectiveUserModel extends FlutterFlowModel<EditObjectiveUserWidget> {
  ///  Local state fields for this component.

  String? imageCategory;

  DocumentReference? refObjective;

  ///  State fields for stateful widgets in this component.

  // State field(s) for objectiveCreateUser widget.
  FocusNode? objectiveCreateUserFocusNode;
  TextEditingController? objectiveCreateUserTextController;
  String? Function(BuildContext, String?)?
      objectiveCreateUserTextControllerValidator;
  // State field(s) for FinalObjectiveUser widget.
  FocusNode? finalObjectiveUserFocusNode;
  TextEditingController? finalObjectiveUserTextController;
  String? Function(BuildContext, String?)?
      finalObjectiveUserTextControllerValidator;
  // State field(s) for editObjectiveDateUser widget.
  FocusNode? editObjectiveDateUserFocusNode1;
  TextEditingController? editObjectiveDateUserTextController1;
  String? Function(BuildContext, String?)?
      editObjectiveDateUserTextController1Validator;
  // State field(s) for editObjectiveDateUser widget.
  FocusNode? editObjectiveDateUserFocusNode2;
  TextEditingController? editObjectiveDateUserTextController2;
  String? Function(BuildContext, String?)?
      editObjectiveDateUserTextController2Validator;
  // State field(s) for editDetailsObjectiveUser widget.
  FocusNode? editDetailsObjectiveUserFocusNode;
  TextEditingController? editDetailsObjectiveUserTextController;
  String? Function(BuildContext, String?)?
      editDetailsObjectiveUserTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    objectiveCreateUserFocusNode?.dispose();
    objectiveCreateUserTextController?.dispose();

    finalObjectiveUserFocusNode?.dispose();
    finalObjectiveUserTextController?.dispose();

    editObjectiveDateUserFocusNode1?.dispose();
    editObjectiveDateUserTextController1?.dispose();

    editObjectiveDateUserFocusNode2?.dispose();
    editObjectiveDateUserTextController2?.dispose();

    editDetailsObjectiveUserFocusNode?.dispose();
    editDetailsObjectiveUserTextController?.dispose();
  }
}
