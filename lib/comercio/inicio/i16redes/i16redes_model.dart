import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/influencers/registracion/i57calendario/i57calendario_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I16redesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for insta widget.
  TextEditingController? instaController;
  String? Function(BuildContext, String?)? instaControllerValidator;
  // State field(s) for tiktok widget.
  TextEditingController? tiktokController;
  String? Function(BuildContext, String?)? tiktokControllerValidator;
  // State field(s) for face widget.
  TextEditingController? faceController;
  String? Function(BuildContext, String?)? faceControllerValidator;
  // State field(s) for web widget.
  TextEditingController? webController;
  String? Function(BuildContext, String?)? webControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    instaController?.dispose();
    tiktokController?.dispose();
    faceController?.dispose();
    webController?.dispose();
  }

  /// Additional helper methods are added here.

}
