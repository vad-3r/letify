import '/flutter_flow/flutter_flow_util.dart';
import 'edit_documents_widget.dart' show EditDocumentsWidget;
import 'package:flutter/material.dart';

class EditDocumentsModel extends FlutterFlowModel<EditDocumentsWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_idCard = false;
  FFUploadedFile uploadedLocalFile_idCard =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_idCard = '';

  bool isDataUploading_studentCard = false;
  FFUploadedFile uploadedLocalFile_studentCard =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_studentCard = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
