import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/comercio/mis_ofertas/i57calendario/i57calendario_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I16RegistrarComercio3Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for insta widget.
  TextEditingController? instaController;
  String? Function(BuildContext, String?)? instaControllerValidator;
  // State field(s) for tiktok widget.
  TextEditingController? tiktokController;
  String? Function(BuildContext, String?)? tiktokControllerValidator;
  // State field(s) for Youtube widget.
  TextEditingController? youtubeController;
  String? Function(BuildContext, String?)? youtubeControllerValidator;
  // State field(s) for Twich widget.
  TextEditingController? twichController;
  String? Function(BuildContext, String?)? twichControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    instaController?.dispose();
    tiktokController?.dispose();
    youtubeController?.dispose();
    twichController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
