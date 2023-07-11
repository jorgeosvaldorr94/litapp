import '/comercio/mis_ofertas/headercomercioruedita/headercomercioruedita_widget.dart';
import '/comercio/mis_ofertas/i57calendario/i57calendario_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class I197MegaInfluencerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
    headercomerciorueditaModel.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
