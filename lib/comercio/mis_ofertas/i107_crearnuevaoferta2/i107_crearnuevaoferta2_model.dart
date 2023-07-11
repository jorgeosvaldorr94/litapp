import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/comercio/mis_ofertas/categorias/categorias_widget.dart';
import '/comercio/mis_ofertas/descripcionpropuesta/descripcionpropuesta_widget.dart';
import '/comercio/mis_ofertas/horario/horario_widget.dart';
import '/comercio/mis_ofertas/i192ofertapublicada/i192ofertapublicada_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I107Crearnuevaoferta2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for descripBenef widget.
  TextEditingController? descripBenefController;
  String? Function(BuildContext, String?)? descripBenefControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    descripBenefController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
