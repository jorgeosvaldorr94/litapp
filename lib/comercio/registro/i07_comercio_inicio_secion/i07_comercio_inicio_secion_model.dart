import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sprint2/componentes/bienvenido/bienvenido_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I07ComercioInicioSecionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for clave widget.
  TextEditingController? claveController;
  late bool claveVisibility;
  String? Function(BuildContext, String?)? claveControllerValidator;
  // Model for bienvenido component.
  late BienvenidoModel bienvenidoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    claveVisibility = false;
    bienvenidoModel = createModel(context, () => BienvenidoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    emailController?.dispose();
    claveController?.dispose();
    bienvenidoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
