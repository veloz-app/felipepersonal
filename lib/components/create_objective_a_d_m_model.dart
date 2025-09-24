import '/flutter_flow/flutter_flow_util.dart';
import 'create_objective_a_d_m_widget.dart' show CreateObjectiveADMWidget;
import 'package:flutter/material.dart';

class CreateObjectiveADMModel
    extends FlutterFlowModel<CreateObjectiveADMWidget> {
  ///  Local state fields for this component.

  bool? videoUpalodADMConfirm;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ObjetiveNameADM widget.
  FocusNode? objetiveNameADMFocusNode;
  TextEditingController? objetiveNameADMTextController;
  String? Function(BuildContext, String?)?
      objetiveNameADMTextControllerValidator;
  // State field(s) for tipeObjectiveADM widget.
  FocusNode? tipeObjectiveADMFocusNode;
  TextEditingController? tipeObjectiveADMTextController;
  String? Function(BuildContext, String?)?
      tipeObjectiveADMTextControllerValidator;
  // State field(s) for ObjectiveDetailsADM widget.
  FocusNode? objectiveDetailsADMFocusNode;
  TextEditingController? objectiveDetailsADMTextController;
  String? Function(BuildContext, String?)?
      objectiveDetailsADMTextControllerValidator;
  bool isDataUploading_uploadImageObjectiveADMCreate = false;
  FFUploadedFile uploadedLocalFile_uploadImageObjectiveADMCreate =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadImageObjectiveADMCreate = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    objetiveNameADMFocusNode?.dispose();
    objetiveNameADMTextController?.dispose();

    tipeObjectiveADMFocusNode?.dispose();
    tipeObjectiveADMTextController?.dispose();

    objectiveDetailsADMFocusNode?.dispose();
    objectiveDetailsADMTextController?.dispose();
  }
}
