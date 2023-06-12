import '../../../routes/routes.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i00inicio_model.dart';
export 'i00inicio_model.dart';

class I00inicioWidget extends StatefulWidget {
  const I00inicioWidget({Key? key}) : super(key: key);

  @override
  _I00inicioWidgetState createState() => _I00inicioWidgetState();
}

class _I00inicioWidgetState extends State<I00inicioWidget> {
  late I00inicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I00inicioModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   // context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFF5A26),
        body: SafeArea(
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 43.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 47.0,
                            height: 46.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.of(context).pop();
                               //cambiar
                               // context.safePop();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: Color(0xFF949494),
                                size: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(60.0, 40.0, 60.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                           /* FFLocalizations.of(context).getText(
                              'llo98c4u' /* NOMBRE DE LA APP */,
                            )*/'NOMBRE DE LA APP',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Brandon',
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(38.0, 52.0, 39.0, 0.0),
                      child: Container(
                        width: 313.0,
                        height: 313.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(150.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                         /*   FFLocalizations.of(context).getText(
                              'lmn7wvkx' /* LOGO */,
                            )*/'LOGO',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Albra',
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 450.0, 27.0, 0.0),
                  child: 
                   FFButtonWidget(
                    onPressed: () async {
                      Navigator.pushNamed(context, Routes.I07Influencers);
                      /* cambiar
                      context.pushNamed(
                        'I07Influencers',
                        queryParameters: {
                          'tipo': serializeParam(
                            'INFLUENCERS',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );*/
                    },
                    text: /*FFLocalizations.of(context).getText(
                      '387f0t2a' /* INICIAR SESION */,
                    )*/'INICIAR SESION',
                    options: FFButtonOptions(
                      width: 338.0,
                      height: 56.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFFF9B7B),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Brandon',
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 600.0, 27.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.pushNamed(context,Routes.I01Registracionpaso1);
                      /* cambiar
                      context.pushNamed(
                        'I01Registracionpaso1',
                        queryParameters: {
                          'isInfluencer': serializeParam(
                            true,
                            ParamType.bool,
                          ),
                        }.withoutNulls,
                      );*/
                    },
                    text: /*FFLocalizations.of(context).getText(
                      '3bm7q5r2' /* REGISTRARSE */,
                    )*/'REGISTRARSE',
                    options: FFButtonOptions(
                      width: 338.0,
                      height: 56.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Brandon',
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
