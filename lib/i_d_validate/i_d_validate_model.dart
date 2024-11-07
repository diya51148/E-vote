import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'i_d_validate_widget.dart' show IDValidateWidget;
import 'package:flutter/material.dart';

class IDValidateModel extends FlutterFlowModel<IDValidateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Voter_Id widget.
  FocusNode? voterIdFocusNode;
  TextEditingController? voterIdTextController;
  String? Function(BuildContext, String?)? voterIdTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for DOB widget.
  FocusNode? dobFocusNode;
  TextEditingController? dobTextController;
  String? Function(BuildContext, String?)? dobTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  VotersRecord? voterDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    voterIdFocusNode?.dispose();
    voterIdTextController?.dispose();

    dobFocusNode?.dispose();
    dobTextController?.dispose();
  }
}
