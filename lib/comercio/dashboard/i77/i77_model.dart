import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import '/sprint2/componentes/campanaconinfluencer/campanaconinfluencer_widget.dart';
import '/sprint2/componentes/cantidaddepublicaciones/cantidaddepublicaciones_widget.dart';
import '/sprint2/componentes/formatopublicacion/formatopublicacion_widget.dart';
import '/sprint2/componentes/niveldeinfluencer/niveldeinfluencer_widget.dart';
import '/sprint2/componentes/plataforma/plataforma_widget.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I77Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for cantidadi widget.
  TextEditingController? cantidadiController;
  String? Function(BuildContext, String?)? cantidadiControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for descripcion widget.
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    cantidadiController?.dispose();
    descripcionController?.dispose();
  }

  /// Additional helper methods are added here.

}
