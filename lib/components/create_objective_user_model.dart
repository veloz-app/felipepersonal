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

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  ObjectivesRecord? docReferenceOutput;
  // State field(s) for objectiveCreateUser widget.
  FocusNode? objectiveCreateUserFocusNode;
  TextEditingController? objectiveCreateUserTextController;
  String? Function(BuildContext, String?)?
      objectiveCreateUserTextControllerValidator;
  // State field(s) for DropDownDatatime widget.
  int? dropDownDatatimeValue;
  FormFieldController<int>? dropDownDatatimeValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
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
    objectiveCreateUserFocusNode?.dispose();
    objectiveCreateUserTextController?.dispose();

    detailsObjectiveCreateUserFocusNode?.dispose();
    detailsObjectiveCreateUserTextController?.dispose();
  }
}
