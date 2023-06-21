import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_bar_model.dart';
export 'side_bar_model.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  _SideBarWidgetState createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  late SideBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0xB5EE8B60),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      'https://picsum.photos/seed/569/600',
                      width: 64.0,
                      height: 64.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF74A41),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(42.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Image.asset(
                              'assets/images/Vector.png',
                              width: 16.0,
                              height: 19.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'j8b2ifvr' /* Comercios */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Brandon',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(37.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 14.0, 0.0),
                              child: Image.asset(
                                'assets/images/_ionicons_svg_md-calendar.png',
                                width: 27.0,
                                height: 27.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'q4kbplx7' /* Notificaciones */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(37.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.5, 0.0),
                              child: Image.asset(
                                'assets/images/Group_238904.png',
                                width: 24.4,
                                height: 15.4,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'mc8ktnre' /* Membresias */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(39.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 17.5, 0.0),
                              child: Image.asset(
                                'assets/images/Group_1000003434.png',
                                width: 21.4,
                                height: 22.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '8sxcmq3a' /* Influencers */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(39.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.9, 0.0),
                              child: Image.asset(
                                'assets/images/Vector.png',
                                width: 18.0,
                                height: 23.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'jsvkpokj' /* Ofertas */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(38.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: Image.asset(
                                'assets/images/Group_1000003438.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'x2h7h7yt' /* Administración general */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(39.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: Image.asset(
                                'assets/images/mensaje.png',
                                width: 22.6,
                                height: 22.6,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'dwamur0q' /* Chat */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(38.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: Image.asset(
                                'assets/images/export.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'yltgerjb' /* Cerrar sesión */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
