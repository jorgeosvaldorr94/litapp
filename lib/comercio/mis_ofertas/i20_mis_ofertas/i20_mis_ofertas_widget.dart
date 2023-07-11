import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i20_mis_ofertas_model.dart';
export 'i20_mis_ofertas_model.dart';

class I20MisOfertasWidget extends StatefulWidget {
  const I20MisOfertasWidget({Key? key}) : super(key: key);

  @override
  _I20MisOfertasWidgetState createState() => _I20MisOfertasWidgetState();
}

class _I20MisOfertasWidgetState extends State<I20MisOfertasWidget>
    with TickerProviderStateMixin {
  late I20MisOfertasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 240.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(300.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 240.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(300.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I20MisOfertasModel());
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 45.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('I33PerfilComun');
                            },
                            child: Container(
                              width: 47.0,
                              height: 46.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x83F8C0C0),
                                    offset: Offset(0.0, 3.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7.0, 7.0, 7.0, 7.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Config.png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '6t0q0gpa' /* Mis Ofertas */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Albra',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 35.0,
                              ),
                            ],
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('I40Notificaciones');
                            },
                            child: Container(
                              width: 47.0,
                              height: 47.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7.0, 7.0, 7.0, 7.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Notify.png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'kuclu8a1' /* Comida */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Albra',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Color(0xFFF10909),
                            size: 24.0,
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation1']!),
                    ),
                    Container(
                      width: double.infinity,
                      height: 220.0,
                      decoration: BoxDecoration(
                        color: Color(0x01FFFFFF),
                      ),
                      child: StreamBuilder<List<OffersRecord>>(
                        stream: queryOffersRecord(
                          queryBuilder: (offersRecord) => offersRecord
                              .where('idCreador', isEqualTo: currentUserUid)
                              .where('category', isEqualTo: 'Comida'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              ),
                            );
                          }
                          List<OffersRecord> listViewOffersRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewOffersRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewOffersRecord =
                                  listViewOffersRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7.0, 7.0, 7.0, 7.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'I21detalledeoferta',
                                      queryParameters: {
                                        'offer': serializeParam(
                                          listViewOffersRecord.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: 160.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x337E7A7A),
                                          offset: Offset(0.0, 4.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 120.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      listViewOffersRecord
                                                          .image,
                                                      'data:image/jpeg;base64,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',
                                                    ),
                                                    height: 120.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  listViewOffersRecord
                                                      .placeName,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Brandon',
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 2.0, 0.0, 0.0),
                                                child: Text(
                                                  listViewOffersRecord.campaing,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Brandon',
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                listViewOffersRecord.platform,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Albra',
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  listViewOffersRecord.city,
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Brandon',
                                                        fontSize: 10.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation3']!),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'izm0up3z' /* Fitness */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Albra',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Color(0xFFF10909),
                                size: 24.0,
                              ),
                            ],
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['rowOnPageLoadAnimation2']!),
                    ),
                    Container(
                      width: double.infinity,
                      height: 220.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: StreamBuilder<List<OffersRecord>>(
                        stream: queryOffersRecord(
                          queryBuilder: (offersRecord) => offersRecord
                              .where('idCreador',
                                  isEqualTo: currentUserReference?.id)
                              .where('category', isEqualTo: 'Fitness'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              ),
                            );
                          }
                          List<OffersRecord> listViewOffersRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewOffersRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewOffersRecord =
                                  listViewOffersRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7.0, 7.0, 7.0, 7.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'I21detalledeoferta',
                                      queryParameters: {
                                        'offer': serializeParam(
                                          listViewOffersRecord.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: 160.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x337E7A7A),
                                          offset: Offset(0.0, 4.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: 120.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(16.0),
                                                      topRight:
                                                          Radius.circular(16.0),
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(16.0),
                                                      topRight:
                                                          Radius.circular(16.0),
                                                    ),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        listViewOffersRecord
                                                            .image,
                                                        'data:image/png;base64,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',
                                                      ),
                                                      fit: BoxFit.fill,
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
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                listViewOffersRecord.placeName,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Brandon',
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                listViewOffersRecord.campaing,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Brandon',
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                listViewOffersRecord.platform,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Albra',
                                                          fontSize: 10.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    listViewOffersRecord.city,
                                                    'Place Name',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Brandon',
                                                        fontSize: 10.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation4']!),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: double.infinity,
                      height: 67.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Home.png',
                                        width: 40.0,
                                        height: 40.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation']!),
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
                                        context.pushNamed(
                                          'IAtencionalcliente',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/images/mensaje.png',
                                        width: 25.6,
                                        height: 25.6,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (FFAppState().isInfluencers)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'I24missolicitudes',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/pendientes.png',
                                          width: 25.6,
                                          height: 25.6,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    if (!FFAppState().isInfluencers)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('I18Membresias');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/Group_238904.png',
                                            width: 33.0,
                                            height: 27.0,
                                            fit: BoxFit.fill,
                                          ),
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
                                        context.pushNamed(
                                          'I29Calendario',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/images/calendario.png',
                                        width: 25.6,
                                        height: 25.6,
                                        fit: BoxFit.cover,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
