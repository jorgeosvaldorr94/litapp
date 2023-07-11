import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I34EditPerfilComercioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nombreComercio widget.
  TextEditingController? nombreComercioController;
  String? Function(BuildContext, String?)? nombreComercioControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for NombreDelEncargado widget.
  TextEditingController? nombreDelEncargadoController;
  String? Function(BuildContext, String?)?
      nombreDelEncargadoControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for CodigoPromocional widget.
  TextEditingController? codigoPromocionalController;
  String? Function(BuildContext, String?)? codigoPromocionalControllerValidator;
  // State field(s) for Instagram widget.
  TextEditingController? instagramController;
  String? Function(BuildContext, String?)? instagramControllerValidator;
  // State field(s) for Facebook widget.
  TextEditingController? facebookController;
  String? Function(BuildContext, String?)? facebookControllerValidator;
  // State field(s) for WebSite widget.
  TextEditingController? webSiteController;
  String? Function(BuildContext, String?)? webSiteControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreComercioController?.dispose();
    emailController?.dispose();
    nombreDelEncargadoController?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    codigoPromocionalController?.dispose();
    instagramController?.dispose();
    facebookController?.dispose();
    webSiteController?.dispose();
    textController10?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
