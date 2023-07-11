import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a8comercio_model.dart';
export 'a8comercio_model.dart';

class A8comercioWidget extends StatefulWidget {
  const A8comercioWidget({Key? key}) : super(key: key);

  @override
  _A8comercioWidgetState createState() => _A8comercioWidgetState();
}

class _A8comercioWidgetState extends State<A8comercioWidget> {
  late A8comercioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A8comercioModel());
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
      width: 533.0,
      height: 526.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(0.0, 2.0),
          )
        ],
        borderRadius: BorderRadius.circular(68.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 46.0, 35.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Image.asset(
                    'assets/images/close-circle.png',
                    width: 55.0,
                    height: 55.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(87.0, 14.0, 72.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'bkjjcoqy' /* Se ha editado información del ... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Albra',
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(95.0, 31.0, 57.0, 47.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'vak9sukr' /* Automáticamente se le enviará ... */,
                    ),
                    textAlign: TextAlign.center,
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
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: FFLocalizations.of(context).getText(
              'jpegg5iq' /* ACEPTAR */,
            ),
            options: FFButtonOptions(
              width: 210.0,
              height: 65.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFFF10909),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Brandon',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(27.0),
            ),
          ),
        ],
      ),
    );
  }
}
