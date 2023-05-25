import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/influencers/registracion/i57calendario/i57calendario_widget.dart';
import '/sprint2/componentes/headercomercioruedita/headercomercioruedita_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I197Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for headercomercioruedita component.
  late HeadercomerciorueditaModel headercomerciorueditaModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headercomerciorueditaModel =
        createModel(context, () => HeadercomerciorueditaModel());
  }

  void dispose() {
    headercomerciorueditaModel.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
