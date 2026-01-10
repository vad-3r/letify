import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'video_upload_page_widget.dart' show VideoUploadPageWidget;
import 'package:flutter/material.dart';

class VideoUploadPageModel extends FlutterFlowModel<VideoUploadPageWidget> {
  ///  Local state fields for this page.

  String? file;

  bool? fileChecking50MB;

  bool? uploadVideo;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in Video_Upload_Page widget.
  List<UserRecord>? staff;
  // Stores action output result for [Firestore Query - Query a collection] action in Video_Upload_Page widget.
  List<LandlordRecord>? landlords;
  // Stores action output result for [Firestore Query - Query a collection] action in Video_Upload_Page widget.
  List<StudentRecord>? cutStudents;
  // Stores action output result for [Firestore Query - Query a collection] action in Video_Upload_Page widget.
  List<StudentRecord>? ufsStudents;
  bool isDataUploading_uploadedVideo = false;
  FFUploadedFile uploadedLocalFile_uploadedVideo =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedVideo = '';

  // Stores action output result for [Custom Action - checkFileExceeds50MBWeb] action in Button widget.
  bool? fileCheck;
  // Stores action output result for [Custom Action - fileName] action in Button widget.
  String? fileName;
  bool isDataUploading_uploadedVideo1 = false;
  FFUploadedFile uploadedLocalFile_uploadedVideo1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedVideo1 = '';

  // Stores action output result for [Custom Action - checkFileExceeds50MBWeb] action in Button widget.
  bool? fileCheck1;
  // Stores action output result for [Custom Action - fileName] action in Button widget.
  String? fileName1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'A title for your video is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'A description for your video is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InfoBoardRecord? info;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
