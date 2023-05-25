import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I04linkaredesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

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
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    instagramController?.dispose();
    tiktokController?.dispose();
    youtubeController?.dispose();
    twichController?.dispose();
    porfolioController?.dispose();
  }

  /// Additional helper methods are added here.

}
