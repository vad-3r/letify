import '/flutter_flow/flutter_flow_util.dart';
import 'share_optionss_widget.dart' show ShareOptionssWidget;
import 'package:flutter/material.dart';

class ShareOptionssModel extends FlutterFlowModel<ShareOptionssWidget> {
  ///  Local state fields for this component.

  String? newTextImage;

  String? imageURL;

  String? pdf;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_galleryStuff = false;
  FFUploadedFile uploadedLocalFile_galleryStuff =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_galleryStuff = '';

  bool isDataUploading_cameraStuff = false;
  FFUploadedFile uploadedLocalFile_cameraStuff =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_cameraStuff = '';

  bool isDataUploading_uploadDataThw = false;
  FFUploadedFile uploadedLocalFile_uploadDataThw =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataThw = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
