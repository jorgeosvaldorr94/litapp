import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I01Registracionpaso1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for clave widget.
  TextEditingController? claveController;
  late bool claveVisibility;
  String? Function(BuildContext, String?)? claveControllerValidator;
  // State field(s) for confirmarclave widget.
  TextEditingController? confirmarclaveController;
  late bool confirmarclaveVisibility;
  String? Function(BuildContext, String?)? confirmarclaveControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    claveVisibility = false;
    confirmarclaveVisibility = false;
  }

  void dispose() {
    emailController?.dispose();
    claveController?.dispose();
    confirmarclaveController?.dispose();
  }

  /// Additional helper methods are added here.

}
