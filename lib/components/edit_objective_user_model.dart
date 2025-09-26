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
  // State field(s) for editObjectiveFinal widget.
  FocusNode? editObjectiveFinalFocusNode;
  TextEditingController? editObjectiveFinalTextController;
  String? Function(BuildContext, String?)?
      editObjectiveFinalTextControllerValidator;
  // State field(s) for editObjectiveDateUser widget.
  FocusNode? editObjectiveDateUserFocusNode;
  TextEditingController? editObjectiveDateUserTextController;
  String? Function(BuildContext, String?)?
      editObjectiveDateUserTextControllerValidator;
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

    editObjectiveFinalFocusNode?.dispose();
    editObjectiveFinalTextController?.dispose();

    editObjectiveDateUserFocusNode?.dispose();
    editObjectiveDateUserTextController?.dispose();

    editDetailsObjectiveUserFocusNode?.dispose();
    editDetailsObjectiveUserTextController?.dispose();
  }
}
