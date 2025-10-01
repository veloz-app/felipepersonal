import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'post_alternative_training_widget.dart'
    show PostAlternativeTrainingWidget;
import 'package:flutter/material.dart';

class PostAlternativeTrainingModel
    extends FlutterFlowModel<PostAlternativeTrainingWidget> {
  ///  Local state fields for this page.

  bool? confirmVIdeoUpdate;

  bool? confirmImageCoverUpdate;

  int? durationAdmMs;

  ///  State fields for stateful widgets in this page.

  // State field(s) for titleVideoCreate widget.
  FocusNode? titleVideoCreateFocusNode;
  TextEditingController? titleVideoCreateTextController;
  String? Function(BuildContext, String?)?
      titleVideoCreateTextControllerValidator;
  // State field(s) for SubtitleVideoCreate widget.
  FocusNode? subtitleVideoCreateFocusNode;
  TextEditingController? subtitleVideoCreateTextController;
  String? Function(BuildContext, String?)?
      subtitleVideoCreateTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for detailVideoCreate widget.
  FocusNode? detailVideoCreateFocusNode;
  TextEditingController? detailVideoCreateTextController;
  String? Function(BuildContext, String?)?
      detailVideoCreateTextControllerValidator;
  bool isDataUploading_uploadAlternativeVideo = false;
  FFUploadedFile uploadedLocalFile_uploadAlternativeVideo =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadAlternativeVideo = '';

  bool isDataUploading_uploadImageCOverNotification = false;
  FFUploadedFile uploadedLocalFile_uploadImageCOverNotification =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadImageCOverNotification = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AlternativeTrainingRecord? referenceVideo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleVideoCreateFocusNode?.dispose();
    titleVideoCreateTextController?.dispose();

    subtitleVideoCreateFocusNode?.dispose();
    subtitleVideoCreateTextController?.dispose();

    detailVideoCreateFocusNode?.dispose();
    detailVideoCreateTextController?.dispose();
  }
}
