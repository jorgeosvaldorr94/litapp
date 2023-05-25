import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a5_editarcomercio_model.dart';
export 'a5_editarcomercio_model.dart';

class A5EditarcomercioWidget extends StatefulWidget {
  const A5EditarcomercioWidget({Key? key}) : super(key: key);

  @override
  _A5EditarcomercioWidgetState createState() => _A5EditarcomercioWidgetState();
}

class _A5EditarcomercioWidgetState extends State<A5EditarcomercioWidget> {
  late A5EditarcomercioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A5EditarcomercioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 968.0,
      height: 359.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(69.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(95.0, 69.0, 81.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ph6je9j2' /* Se ha editado correctamente la... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Albra',
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Image.asset(
                  'assets/images/close-circle.png',
                  width: 55.0,
                  height: 55.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(95.0, 0.0, 221.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'do3r0uuf' /*  Automáticamente se le enviará... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Brandon',
                          fontSize: 24.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(85.0, 28.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'ug52mkbu' /* GUARDAR */,
                  ),
                  options: FFButtonOptions(
                    width: 209.0,
                    height: 65.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFF5A26),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Brandon',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 20.6,
                          useGoogleFonts: false,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(27.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
