import '/flutter_flow/flutter_flow_util.dart';
import 'create_party_widget.dart' show CreatePartyWidget;
import 'package:flutter/material.dart';

class CreatePartyModel extends FlutterFlowModel<CreatePartyWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for Leader widget.
  FocusNode? leaderFocusNode;
  TextEditingController? leaderTextController;
  String? Function(BuildContext, String?)? leaderTextControllerValidator;
  // State field(s) for year widget.
  FocusNode? yearFocusNode;
  TextEditingController? yearTextController;
  String? Function(BuildContext, String?)? yearTextControllerValidator;
  // State field(s) for headquater widget.
  FocusNode? headquaterFocusNode;
  TextEditingController? headquaterTextController;
  String? Function(BuildContext, String?)? headquaterTextControllerValidator;
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    leaderFocusNode?.dispose();
    leaderTextController?.dispose();

    yearFocusNode?.dispose();
    yearTextController?.dispose();

    headquaterFocusNode?.dispose();
    headquaterTextController?.dispose();

    numberFocusNode?.dispose();
    numberTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
