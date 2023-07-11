import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i33_perfil_comercio_ya_no_model.dart';
export 'i33_perfil_comercio_ya_no_model.dart';

class I33PerfilComercioYaNoWidget extends StatefulWidget {
  const I33PerfilComercioYaNoWidget({Key? key}) : super(key: key);

  @override
  _I33PerfilComercioYaNoWidgetState createState() =>
      _I33PerfilComercioYaNoWidgetState();
}

class _I33PerfilComercioYaNoWidgetState
    extends State<I33PerfilComercioYaNoWidget> {
  late I33PerfilComercioYaNoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I33PerfilComercioYaNoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 87.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 45.0, 15.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context
                                            .pushNamed('I20listadodeofertas');
                                      },
                                      child: Container(
                                        width: 47.0,
                                        height: 47.0,
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
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.home,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '4g5buj8z' /* Mi Perfil */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Icon(
                                      Icons.settings_outlined,
                                      color: Color(0x0057636C),
                                      size: 45.0,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 30.0, 15.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AuthUserStreamWidget(
                                          builder: (context) => Container(
                                            width: 110.0,
                                            height: 110.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                (currentUserDocument
                                                            ?.fotoComercio
                                                            ?.toList() ??
                                                        [])
                                                    .first,
                                                'data:image/png;base64,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',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AuthUserStreamWidget(
                                                builder: (context) => Text(
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.nombrecomercio,
                                                      ''),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Albra',
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                currentUserEmail,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Brandon',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 50.0, 15.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'I34EditPerfilComercio');
                                                  },
                                                  child: Container(
                                                    height: 78.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Image.asset(
                                                                    'assets/images/Group_238921.png',
                                                                    width: 30.0,
                                                                    height:
                                                                        30.0,
                                                                    fit: BoxFit
                                                                        .none,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'ndprnc06' /* Editar Perfil */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Open Sans',
                                                                                fontSize: 16.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'o2866ats' /* Editar perfil... */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Open Sans',
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .navigate_next_sharp,
                                                                color: Color(
                                                                    0xFFF10909),
                                                                size: 24.0,
                                                              ),
                                                            ],
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.goNamed(
                                                          'I20MisOfertas');
                                                    },
                                                    child: Container(
                                                      height: 78.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .local_offer_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          30.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '121q8xnx' /* Mis Ofertas */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'b635vldp' /* Ver mis ofertas... */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .navigate_next_sharp,
                                                                  color: Color(
                                                                      0xFFF10909),
                                                                  size: 24.0,
                                                                ),
                                                              ],
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'CrearNuevaOferta1');
                                                    },
                                                    child: Container(
                                                      height: 78.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .local_offer_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          30.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'u86hxdbs' /* Crear Oferta */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '1ik1ksk2' /* Crear nueva oferta... */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .navigate_next_sharp,
                                                                  color: Color(
                                                                      0xFFF10909),
                                                                  size: 24.0,
                                                                ),
                                                              ],
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.goNamed(
                                                          'I28Atencionalcliente');
                                                    },
                                                    child: Container(
                                                      height: 78.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/Group_238922.png',
                                                                      width:
                                                                          33.0,
                                                                      height:
                                                                          33.0,
                                                                      fit: BoxFit
                                                                          .none,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'qn1tmj2i' /* Soporte Técnico */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'eowc9w40' /* Responde tus preguntas... */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .navigate_next_sharp,
                                                                  color: Color(
                                                                      0xFFF10909),
                                                                  size: 24.0,
                                                                ),
                                                              ],
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'I38Metododepago');
                                                    },
                                                    child: Container(
                                                      height: 78.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/pagos.png',
                                                                      width:
                                                                          33.0,
                                                                      height:
                                                                          33.0,
                                                                      fit: BoxFit
                                                                          .none,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'wmjc7879' /* Método de pago */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'w4yg7six' /* Mejor manera de recibir los...... */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Open Sans',
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .navigate_next_sharp,
                                                                  color: Color(
                                                                      0xFFF10909),
                                                                  size: 24.0,
                                                                ),
                                                              ],
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.pushNamedAuth('InicioAPK', context.mounted);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 87.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF10909),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'reveubl1' /* CERRAR SESIÓN */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
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
      ),
    );
  }
}
