import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/inicioy_registro/i161_registroexitoso/i161_registroexitoso_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I04RegistrarPaso3Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for instagram widget.
  TextEditingController? instagramController;
  String? Function(BuildContext, String?)? instagramControllerValidator;
  // State field(s) for tiktok widget.
  TextEditingController? tiktokController;
  String? Function(BuildContext, String?)? tiktokControllerValidator;
  // State field(s) for youtube widget.
  TextEditingController? youtubeController;
  String? Function(BuildContext, String?)? youtubeControllerValidator;
  // State field(s) for twich widget.
  TextEditingController? twichController;
  String? Function(BuildContext, String?)? twichControllerValidator;
  // State field(s) for porfolio widget.
  TextEditingController? porfolioController;
  String? Function(BuildContext, String?)? porfolioControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl6 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    instagramController?.dispose();
    tiktokController?.dispose();
    youtubeController?.dispose();
    twichController?.dispose();
    porfolioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
