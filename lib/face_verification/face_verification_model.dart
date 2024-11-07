import '/flutter_flow/flutter_flow_util.dart';
import 'face_verification_widget.dart' show FaceVerificationWidget;
import 'package:flutter/material.dart';

class FaceVerificationModel extends FlutterFlowModel<FaceVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
