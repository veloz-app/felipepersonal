import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_alternative_training_widget.dart'
    show EditAlternativeTrainingWidget;
import 'package:flutter/material.dart';

class EditAlternativeTrainingModel
    extends FlutterFlowModel<EditAlternativeTrainingWidget> {
  ///  Local state fields for this page.

  bool? confirmVIdeoUpdate;

  bool? confirmImageCoverUpdate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for titleVideoEdit widget.
  FocusNode? titleVideoEditFocusNode;
  TextEditingController? titleVideoEditTextController;
  String? Function(BuildContext, String?)?
      titleVideoEditTextControllerValidator;
  // State field(s) for SubtitleVideoEdit widget.
  FocusNode? subtitleVideoEditFocusNode;
  TextEditingController? subtitleVideoEditTextController;
  String? Function(BuildContext, String?)?
      subtitleVideoEditTextControllerValidator;
  // State field(s) for detailVideoEdit widget.
  FocusNode? detailVideoEditFocusNode;
  TextEditingController? detailVideoEditTextController;
  String? Function(BuildContext, String?)?
      detailVideoEditTextControllerValidator;
  bool isDataUploading_uploadAlternativeVideoEdit = false;
  FFUploadedFile uploadedLocalFile_uploadAlternativeVideoEdit =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadAlternativeVideoEdit = '';

  bool isDataUploading_uploadImageCOverNotificationEdit = false;
  FFUploadedFile uploadedLocalFile_uploadImageCOverNotificationEdit =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadImageCOverNotificationEdit = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleVideoEditFocusNode?.dispose();
    titleVideoEditTextController?.dispose();

    subtitleVideoEditFocusNode?.dispose();
    subtitleVideoEditTextController?.dispose();

    detailVideoEditFocusNode?.dispose();
    detailVideoEditTextController?.dispose();
  }
}
