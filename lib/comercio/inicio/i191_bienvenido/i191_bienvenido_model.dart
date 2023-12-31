import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sprint2/componentes/yasosparte/yasosparte_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I191BienvenidoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for yasosparte component.
  late YasosparteModel yasosparteModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    yasosparteModel = createModel(context, () => YasosparteModel());
  }

  void dispose() {
    yasosparteModel.dispose();
  }

  /// Additional helper methods are added here.

}
