import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/influencers/solicitudes/i46_solicitudaceptada/i46_solicitudaceptada_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i21detalledeoferta_model.dart';
export 'i21detalledeoferta_model.dart';

class I21detalledeofertaWidget extends StatefulWidget {
  const I21detalledeofertaWidget({
    Key? key,
    this.offer,
  }) : super(key: key);

  final DocumentReference? offer;

  @override
  _I21detalledeofertaWidgetState createState() =>
      _I21detalledeofertaWidgetState();
}

class _I21detalledeofertaWidgetState extends State<I21detalledeofertaWidget>
    with TickerProviderStateMixin {
  late I21detalledeofertaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

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
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
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
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-39.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I21detalledeofertaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Stack(
            children: [
              StreamBuilder<OffersRecord>(
                stream: OffersRecord.getDocument(widget.offer!),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  final columnOffersRecord = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: 321.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: Image.network(
                              valueOrDefault<String>(
                                columnOffersRecord.image,
                                'https://www.fcbarcelona.com/fcbarcelona/photo/2022/08/02/ae5252d1-b79b-4950-9e34-6e67fac09bb0/LeoMessi20092010_pic_fcb-arsenal62.jpg',
                              ),
                            ).image,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 40.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Container(
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
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation1']!),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 15.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      columnOffersRecord.name!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Brandon',
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      columnOffersRecord.schedule!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Brandon',
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 11.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2022-07-13_at_16.49_1.png',
                                  ).image,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 33.0,
                                      height: 29.0,
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
                                        borderRadius:
                                            BorderRadius.circular(9.1),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 3.0, 4.0, 4.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '5tsctyxi' /* 2km */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Brandon',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 15.0, 22.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 190.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 6.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '337cqpn1' /* NEGRONI */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Albra',
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.star_rate,
                                            color: Color(0xFFF74A41),
                                            size: 15.0,
                                          ),
                                          Icon(
                                            Icons.star_border,
                                            color: Color(0xFFF74A41),
                                            size: 15.0,
                                          ),
                                          Icon(
                                            Icons.star_border,
                                            color: Color(0xFFF74A41),
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.asset(
                                          'assets/images/Group_1000003397.png',
                                          width: 23.0,
                                          height: 23.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'pvr1oh5j' /* Av. Santa Fe 19888 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Brandon',
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation3']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            17.0, 17.0, 33.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'i1txylr2' /* Código - AD1234  */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Brandon',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '2omyeu81' /* Disfrutá una porción de pan o ... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Brandon',
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '8dcqwbka' /* Dejanos tu reseña en Google!
 */
                                          ,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Albra',
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w200,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation4']!),
                      ),
                    ],
                  );
                },
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        barrierColor: Color(0x1D000000),
                        enableDrag: false,
                        context: context,
                        builder: (bottomSheetContext) {
                          return GestureDetector(
                            onTap: () => FocusScope.of(context)
                                .requestFocus(_unfocusNode),
                            child: Padding(
                              padding:
                                  MediaQuery.of(bottomSheetContext).viewInsets,
                              child: Container(
                                height: double.infinity,
                                child: I46SolicitudaceptadaWidget(
                                  offer: widget.offer,
                                ),
                              ),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 82.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF74A41),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '485a9hew' /* ACEPTAR */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Brandon',
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
