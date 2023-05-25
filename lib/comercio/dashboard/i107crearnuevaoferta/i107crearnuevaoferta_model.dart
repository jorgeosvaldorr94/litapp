import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sprint2/componentes/categorias/categorias_widget.dart';
import '/sprint2/componentes/descripcionpropuesta/descripcionpropuesta_widget.dart';
import '/sprint2/componentes/horario/horario_widget.dart';
import '/sprint2/componentes/i192ofertapublicada/i192ofertapublicada_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I107crearnuevaofertaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for desbe widget.
  TextEditingController? desbeController;
  String? Function(BuildContext, String?)? desbeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    desbeController?.dispose();
  }

  /// Additional helper methods are added here.

}
