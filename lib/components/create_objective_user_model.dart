import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_objective_user_widget.dart' show CreateObjectiveUserWidget;
import 'package:flutter/material.dart';

class CreateObjectiveUserModel
    extends FlutterFlowModel<CreateObjectiveUserWidget> {
  ///  Local state fields for this component.

  String? imageCategory;

  DocumentReference? refObjective;

  String? typeObjective;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownObjectiveSelect widget.
  String? dropDownObjectiveSelectValue;
  FormFieldController<String>? dropDownObjectiveSelectValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDownObjectiveSelect widget.
  ObjectivesRecord? docReferenceOutput;
  // State field(s) for objectiveFinal widget.
  FocusNode? objectiveFinalFocusNode;
  TextEditingController? objectiveFinalTextController;
  String? Function(BuildContext, String?)?
      objectiveFinalTextControllerValidator;
  // State field(s) for DropDownTypePeriod widget.
  String? dropDownTypePeriodValue;
  FormFieldController<String>? dropDownTypePeriodValueController;
  // State field(s) for objectivePeriod widget.
  FocusNode? objectivePeriodFocusNode;
  TextEditingController? objectivePeriodTextController;
  String? Function(BuildContext, String?)?
      objectivePeriodTextControllerValidator;
  // State field(s) for detailsObjectiveCreateUser widget.
  FocusNode? detailsObjectiveCreateUserFocusNode;
  TextEditingController? detailsObjectiveCreateUserTextController;
  String? Function(BuildContext, String?)?
      detailsObjectiveCreateUserTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Criarobjetivo widget.
  PerformanceRecord? query2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    objectiveFinalFocusNode?.dispose();
    objectiveFinalTextController?.dispose();

    objectivePeriodFocusNode?.dispose();
    objectivePeriodTextController?.dispose();

    detailsObjectiveCreateUserFocusNode?.dispose();
    detailsObjectiveCreateUserTextController?.dispose();
  }
}
