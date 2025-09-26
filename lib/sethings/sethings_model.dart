import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sethings_widget.dart' show SethingsWidget;
import 'package:flutter/material.dart';

class SethingsModel extends FlutterFlowModel<SethingsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadUserImage = false;
  FFUploadedFile uploadedLocalFile_uploadUserImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadUserImage = '';

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
