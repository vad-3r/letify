import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'video_upload_page_model.dart';
export 'video_upload_page_model.dart';

/// Create a page where users can upload videos (e.g., MP4 files) to Firebase
/// Storage, with a preview, progress indicator, and success/error feedback."*
///
/// 1.
///
/// Core Features:
/// File Picker:
///
/// Button to open a file picker (mobile/desktop) that filters for .mp4 files.
///
/// Firebase Storage Upload:
///
/// Automatically upload selected videos to Firebase Storage
/// (/videos/{userId}/{timestamp}).
///
/// Generate a public download URL after upload.
///
/// Video Preview:
///
/// Show a thumbnail or short preview of the selected video before uploading.
///
/// Progress Indicator:
///
/// Display upload progress (percentage or circular loader).
///
/// Error Handling:
///
/// Show alerts for unsupported formats, size limits, or failed uploads.
///
/// 2. UI Components:
/// Upload Button:
///
/// Large button with an icon (e.g., + Upload Video).
///
/// Preview Container:
///
/// Placeholder (before selection) + video thumbnail/preview (after
/// selection).
///
/// Metadata Inputs (Optional):
///
/// Text fields for title, description.
///
/// Progress Bar:
///
/// Linear bar showing upload status.
///
/// Success/Error Toast:
///
/// "Upload complete!" or "Failed: File must be <50MB.
class VideoUploadPageWidget extends StatefulWidget {
  const VideoUploadPageWidget({super.key});

  static String routeName = 'Video_Upload_Page';
  static String routePath = '/videoUploadPage';

  @override
  State<VideoUploadPageWidget> createState() => _VideoUploadPageWidgetState();
}

class _VideoUploadPageWidgetState extends State<VideoUploadPageWidget> {
  late VideoUploadPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoUploadPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.staff = await queryUserRecordOnce(
        queryBuilder: (userRecord) => userRecord.where(
          'employer',
          arrayContains: currentUserReference,
        ),
      );
      _model.landlords = await queryLandlordRecordOnce(
        queryBuilder: (landlordRecord) => landlordRecord.where(
          'agent_mananger',
          isEqualTo: currentUserReference,
        ),
      );
      await actions.debugPrint(
        functions.nameConcat(
            'Landlords: ', _model.landlords?.length.toString())!,
      );
      _model.cutStudents = await queryStudentRecordOnce(
        queryBuilder: (studentRecord) => studentRecord.where(
          'student_institution',
          isEqualTo: 'Central University of Technology',
        ),
      );
      await actions.debugPrint(
        functions.nameConcat(
            'CUT Students: ', _model.cutStudents?.length.toString())!,
      );
      _model.ufsStudents = await queryStudentRecordOnce(
        queryBuilder: (studentRecord) => studentRecord.where(
          'student_institution',
          isEqualTo: 'University of the Free State',
        ),
      );
      await actions.debugPrint(
        functions.nameConcat(
            'UFS Students: ', _model.ufsStudents?.length.toString())!,
      );
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Video Upload',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleLargeIsCustom,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Upload Video',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                  Text(
                    'Share your videos with the community. Supported formats: MP4 (max 50MB)',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 272.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                    ),
                    child: Builder(
                      builder: (context) {
                        if (_model.file == null || _model.file == '') {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.video_library_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 48.0,
                              ),
                              Text(
                                'No video selected',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  final selectedMedia = await selectMedia(
                                    isVideo: true,
                                    mediaSource: MediaSource.videoGallery,
                                    multiImage: false,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(() => _model
                                        .isDataUploading_uploadedVideo = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading_uploadedVideo =
                                          false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile_uploadedVideo =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl_uploadedVideo =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  if (_model.uploadedFileUrl_uploadedVideo !=
                                          '') {
                                    _model.fileCheck =
                                        await actions.checkFileExceeds50MBWeb(
                                      _model.uploadedFileUrl_uploadedVideo,
                                    );
                                    if (_model.fileCheck == true) {
                                      await FirebaseStorage.instance
                                          .refFromURL(_model
                                              .uploadedFileUrl_uploadedVideo)
                                          .delete();
                                      _model.uploadVideo = false;
                                      safeSetState(() {});
                                      _model.fileChecking50MB =
                                          _model.fileCheck;
                                      safeSetState(() {});
                                    } else {
                                      _model.file =
                                          _model.uploadedFileUrl_uploadedVideo;
                                      safeSetState(() {});
                                      _model.fileChecking50MB =
                                          _model.fileCheck;
                                      safeSetState(() {});
                                      _model.uploadVideo = true;
                                      safeSetState(() {});
                                      _model.fileName = await actions.fileName(
                                        _model.uploadedFileUrl_uploadedVideo,
                                      );
                                    }
                                  } else {
                                    _model.fileChecking50MB = false;
                                    safeSetState(() {});
                                    _model.uploadVideo = false;
                                    safeSetState(() {});
                                  }

                                  safeSetState(() {});
                                },
                                text: 'Choose Video',
                                icon: Icon(
                                  Icons.upload_file,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          );
                        } else {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlutterFlowVideoPlayer(
                                path: _model.file!,
                                videoType: VideoType.network,
                                width: double.infinity,
                                height: 200.0,
                                autoPlay: false,
                                looping: false,
                                showControls: true,
                                allowFullScreen: false,
                                allowPlaybackSpeedMenu: false,
                              ),
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        _model.fileName,
                                        'name',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.file = null;
                                  safeSetState(() {});
                                  _model.fileChecking50MB = null;
                                  safeSetState(() {});
                                  _model.uploadVideo = null;
                                  safeSetState(() {});
                                  final selectedMedia = await selectMedia(
                                    isVideo: true,
                                    mediaSource: MediaSource.videoGallery,
                                    multiImage: false,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(() => _model
                                        .isDataUploading_uploadedVideo1 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading_uploadedVideo1 =
                                          false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile_uploadedVideo1 =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl_uploadedVideo1 =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  if (_model.uploadedFileUrl_uploadedVideo1 !=
                                          '') {
                                    _model.fileCheck1 =
                                        await actions.checkFileExceeds50MBWeb(
                                      _model.uploadedFileUrl_uploadedVideo,
                                    );
                                    if (_model.fileCheck1 == true) {
                                      await FirebaseStorage.instance
                                          .refFromURL(_model
                                              .uploadedFileUrl_uploadedVideo)
                                          .delete();
                                      _model.uploadVideo = false;
                                      safeSetState(() {});
                                      _model.fileChecking50MB =
                                          _model.fileCheck;
                                      safeSetState(() {});
                                    } else {
                                      _model.file =
                                          _model.uploadedFileUrl_uploadedVideo1;
                                      safeSetState(() {});
                                      _model.fileChecking50MB =
                                          _model.fileCheck1;
                                      safeSetState(() {});
                                      _model.uploadVideo = true;
                                      safeSetState(() {});
                                      _model.fileName1 = await actions.fileName(
                                        _model.uploadedFileUrl_uploadedVideo,
                                      );
                                    }
                                  } else {
                                    _model.uploadVideo = false;
                                    safeSetState(() {});
                                    _model.fileChecking50MB = false;
                                    safeSetState(() {});
                                  }

                                  safeSetState(() {});
                                },
                                text: 'Change Video',
                                options: FFButtonOptions(
                                  height: 32.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          );
                        }
                      },
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Video Title',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                            TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: false,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter a title for your video',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description (Optional)',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Add a description...',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              maxLines: 3,
                              keyboardType: TextInputType.multiline,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Audience ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                'CUT Students',
                                'UFS Students',
                                'Owners',
                                'Staff'
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue = val),
                              width: double.infinity,
                              height: 45.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              hintText: 'Select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 1.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                  if ((_model.fileChecking50MB == false) &&
                      (_model.fileCheck == false))
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFE8F5E8),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.check_circle_outlined,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upload Complete!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'Your video has been successfully uploaded ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: Color(0xFF4A7C59),
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  if ((_model.fileChecking50MB == false) &&
                      (_model.uploadVideo == false))
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.error_outline,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upload Needed!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'You have not uploaded a video yet',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  if (_model.fileChecking50MB == true)
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFEAEA),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upload Failed',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'File size exceeds 50MB limit. Please choose a smaller video file.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: Color(0xFFC62828),
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  FFButtonWidget(
                    onPressed: () async {
                      if (_model.formKey.currentState == null ||
                          !_model.formKey.currentState!.validate()) {
                        return;
                      }
                      if (_model.dropDownValue == null) {
                        return;
                      }

                      var infoBoardRecordReference =
                          InfoBoardRecord.collection.doc();
                      await infoBoardRecordReference.set({
                        ...createInfoBoardRecordData(
                          landlordId: currentUserReference,
                          title: _model.textController1.text,
                          message: _model.textController2.text,
                          timestamp: getCurrentTimestamp,
                          infoboardId: random_data.randomString(
                            12,
                            12,
                            true,
                            true,
                            true,
                          ),
                          video: _model.uploadedFileUrl_uploadedVideo,
                        ),
                        ...mapToFirestore(
                          {
                            'audience': () {
                              if (_model.dropDownValue == 'CUT Students') {
                                return _model.cutStudents
                                    ?.map((e) => e.studentId)
                                    .withoutNulls
                                    .toList();
                              } else if (_model.dropDownValue ==
                                  'UFS Students') {
                                return _model.ufsStudents
                                    ?.map((e) => e.studentId)
                                    .withoutNulls
                                    .toList();
                              } else if (_model.dropDownValue == 'Owners') {
                                return _model.landlords
                                    ?.map((e) => e.landlordId)
                                    .withoutNulls
                                    .toList();
                              } else if (_model.dropDownValue == 'Staff') {
                                return _model.staff
                                    ?.map((e) => e.reference)
                                    .toList();
                              } else {
                                return functions
                                    .currentUser(currentUserReference!);
                              }
                            }(),
                          },
                        ),
                      });
                      _model.info = InfoBoardRecord.getDocumentFromData({
                        ...createInfoBoardRecordData(
                          landlordId: currentUserReference,
                          title: _model.textController1.text,
                          message: _model.textController2.text,
                          timestamp: getCurrentTimestamp,
                          infoboardId: random_data.randomString(
                            12,
                            12,
                            true,
                            true,
                            true,
                          ),
                          video: _model.uploadedFileUrl_uploadedVideo,
                        ),
                        ...mapToFirestore(
                          {
                            'audience': () {
                              if (_model.dropDownValue == 'CUT Students') {
                                return _model.cutStudents
                                    ?.map((e) => e.studentId)
                                    .withoutNulls
                                    .toList();
                              } else if (_model.dropDownValue ==
                                  'UFS Students') {
                                return _model.ufsStudents
                                    ?.map((e) => e.studentId)
                                    .withoutNulls
                                    .toList();
                              } else if (_model.dropDownValue == 'Owners') {
                                return _model.landlords
                                    ?.map((e) => e.landlordId)
                                    .withoutNulls
                                    .toList();
                              } else if (_model.dropDownValue == 'Staff') {
                                return _model.staff
                                    ?.map((e) => e.reference)
                                    .toList();
                              } else {
                                return functions
                                    .currentUser(currentUserReference!);
                              }
                            }(),
                          },
                        ),
                      }, infoBoardRecordReference);

                      await _model.info!.reference.update({
                        ...mapToFirestore(
                          {
                            'unread_list': _model.info?.audience,
                          },
                        ),
                      });
                      triggerPushNotification(
                        notificationTitle: 'Info Board',
                        notificationText:
                            'An info board video has been made available to you !',
                        notificationSound: 'default',
                        userRefs: _model.info!.audience.toList(),
                        initialPageName: 'Landing_Page',
                        parameterData: {},
                      );

                      context.pushNamed(InfoboardListCorkWidget.routeName);

                      safeSetState(() {});
                    },
                    text: 'Upload Video',
                    icon: Icon(
                      Icons.cloud_upload,
                      size: 24.0,
                    ),
                    options: FFButtonOptions(
                      width: 250.0,
                      height: 50.0,
                      padding: EdgeInsets.all(4.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconColor: Colors.white,
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: Colors.white,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
