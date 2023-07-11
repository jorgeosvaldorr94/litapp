import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/comercio/mis_ofertas/i57calendario/i57calendario_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/influencer_old/registracion/i207rol/i207rol_widget.dart';
import '/influencer_old/registracion/i55_genero/i55_genero_widget.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I12RegistrarComercio2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for encargado widget.
  TextEditingController? encargadoController;
  String? Function(BuildContext, String?)? encargadoControllerValidator;
  // State field(s) for codigo widget.
  TextEditingController? codigoController1;
  String? Function(BuildContext, String?)? codigoController1Validator;
  // State field(s) for codigo widget.
  TextEditingController? codigoController2;
  String? Function(BuildContext, String?)? codigoController2Validator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for descripcion widget.
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreController?.dispose();
    encargadoController?.dispose();
    codigoController1?.dispose();
    codigoController2?.dispose();
    descripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
