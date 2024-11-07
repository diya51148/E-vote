import '/flutter_flow/flutter_flow_util.dart';
import 'election_create_widget.dart' show ElectionCreateWidget;
import 'package:flutter/material.dart';

class ElectionCreateModel extends FlutterFlowModel<ElectionCreateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
