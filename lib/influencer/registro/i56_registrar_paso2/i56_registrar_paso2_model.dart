import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/comercio/mis_ofertas/i57calendario/i57calendario_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import '/influencer_old/registracion/i206representante/i206representante_widget.dart';
import '/influencer_old/registracion/i207porcentaje/i207porcentaje_widget.dart';
import '/influencer_old/registracion/i55_genero/i55_genero_widget.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I56RegistrarPaso2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for apellido widget.
  TextEditingController? apellidoController;
  String? Function(BuildContext, String?)? apellidoControllerValidator;
  // State field(s) for area widget.
  TextEditingController? areaController;
  String? Function(BuildContext, String?)? areaControllerValidator;
  // State field(s) for telefono widget.
  TextEditingController? telefonoController;
  String? Function(BuildContext, String?)? telefonoControllerValidator;
  DateTime? datePicked;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for profesion widget.
  TextEditingController? profesionController;
  String? Function(BuildContext, String?)? profesionControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for representante widget.
  TextEditingController? representanteController;
  String? Function(BuildContext, String?)? representanteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreController?.dispose();
    apellidoController?.dispose();
    areaController?.dispose();
    telefonoController?.dispose();
    profesionController?.dispose();
    representanteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
