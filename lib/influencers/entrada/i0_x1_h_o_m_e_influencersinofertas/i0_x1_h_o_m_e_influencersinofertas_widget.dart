import '../../../routes/routes.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i0_x1_h_o_m_e_influencersinofertas_model.dart';
export 'i0_x1_h_o_m_e_influencersinofertas_model.dart';

class I0X1HOMEInfluencersinofertasWidget extends StatefulWidget {
  const I0X1HOMEInfluencersinofertasWidget({Key? key}) : super(key: key);

  @override
  _I0X1HOMEInfluencersinofertasWidgetState createState() =>
      _I0X1HOMEInfluencersinofertasWidgetState();
}

class _I0X1HOMEInfluencersinofertasWidgetState
    extends State<I0X1HOMEInfluencersinofertasWidget> {
  late I0X1HOMEInfluencersinofertasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I0X1HOMEInfluencersinofertasModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18.0, 26.0, 39.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 47.0,
                          height: 46.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {

                              Navigator.pushNamed(context, Routes.I37ajustesdeperfil);
                            //cambiar
                            //  context.pushNamed('I37ajustesdeperfil');
                            },
                            child: Image.asset(
                              'assets/images/setting.png',
                              width: 24.0,
                              height: 24.0,
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                         /* FFLocalizations.of(context).getText(
                            'wbjtqnk7' /* Influencer */,
                          )*/'Influencer',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Albra',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pushNamed(context, Routes.I40Notificaciones);
                          // cambiar
                          //  context.pushNamed('I40Notificaciones');
                          },
                          child: Image.asset(
                            'assets/images/Group_1000003360.png',
                            width: 26.3,
                            height: 22.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35.0, 92.0, 34.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 104.0,
                              height: 104.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF5A26),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                               /*   FFLocalizations.of(context).getText(
                                    'e47wwcmq' /* LOGO */,
                                  )*/'LOGO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Albra',
                                        fontSize: 20.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 11.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                               /* FFLocalizations.of(context).getText(
                                  'rykpmmst' /* ¡Bienvenida a Lit! */,
                                )*/'¡Bienvenida a Lit!',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Albra',
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(49.0, 90.0, 48.0, 63.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: /*FFLocalizations.of(context).getText(
                              'acrwulx4' /* Hola  */,
                            )*/'Hola',
                            style: TextStyle(
                              fontFamily: 'Brandon',
                              fontWeight: FontWeight.w300,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:/* FFLocalizations.of(context).getText(
                              'wt1ljlrr' /* Wanda!  */,
                            )*/'Wanda!',
                            style: TextStyle(
                              fontFamily: 'Brandon',
                              color: Color(0xFFFF5A26),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: /*FFLocalizations.of(context).getText(
                              'sdrvseik' /* Ya sos parte de nuestra
comuni... */
                              ,
                            )*/'',
                            style: TextStyle(
                              fontFamily: 'Brandon',
                              fontWeight: FontWeight.w300,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 376.2,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF5A26),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            80.0, 100.0, 87.0, 155.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                           //cambiar 
                           // context.pushNamed('I20listadodeofertas');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                  /*  FFLocalizations.of(context).getText(
                                      'fvwz2nep' /* Todavía no tenés ofertas! */,
                                    )*/'Todavía no tenés ofertas!',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Brandon',
                                          fontSize: 24.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),),
        ),
      ),
    );
  }
}
