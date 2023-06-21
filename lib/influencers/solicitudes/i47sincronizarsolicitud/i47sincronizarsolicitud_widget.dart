import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/influencers/solicitudes/i202masinformacionenviodemail/i202masinformacionenviodemail_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i47sincronizarsolicitud_model.dart';
export 'i47sincronizarsolicitud_model.dart';

class I47sincronizarsolicitudWidget extends StatefulWidget {
  const I47sincronizarsolicitudWidget({
    Key? key,
    this.offer,
  }) : super(key: key);

  final DocumentReference? offer;

  @override
  _I47sincronizarsolicitudWidgetState createState() =>
      _I47sincronizarsolicitudWidgetState();
}

class _I47sincronizarsolicitudWidgetState
    extends State<I47sincronizarsolicitudWidget> with TickerProviderStateMixin {
  late I47sincronizarsolicitudModel _model;

  final animationsMap = {
    'stackOnPageLoadAnimation': AnimationInfo(
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
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I47sincronizarsolicitudModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 446.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              128.0, 0.0, 127.9, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 26.0,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              58.0, 35.0, 58.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'aegqgmyu' /* Solicitud Aceptada */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Albra',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              34.0, 4.0, 34.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'nuts7etb' /* Hola @Wanda, tu solicitud a la... */,
                                ),
                                textAlign: TextAlign.center,
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
                        Text(
                          FFLocalizations.of(context).getText(
                            'xg5x9p15' /* No te olvides de arrobar al co... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              23.0, 68.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '228g93a7' /* Sincronizar calendario */,
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              28.0, 18.0, 28.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 280.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    14.0, 0.0, 12.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/Google_Calendar_icon_(2020)_1.png',
                                              width: 17.0,
                                              height: 17.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'occo1s20' /* Google Calendar */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Brandon',
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset(
                                            'assets/images/Group_1000003385.png',
                                            width: 15.0,
                                            height: 15.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ],
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
                      final offersUpdateData = createOffersRecordData(
                        active: false,
                        linked: currentUserEmail,
                      );
                      await widget.offer!.update(offersUpdateData);
                      Navigator.pop(context);
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        barrierColor: Color(0x1D000000),
                        enableDrag: false,
                        context: context,
                        builder: (bottomSheetContext) {
                          return Padding(
                            padding:
                                MediaQuery.of(bottomSheetContext).viewInsets,
                            child: Container(
                              height: double.infinity,
                              child: I202masinformacionenviodemailWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 82.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF74A41),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'bs7l76qq' /* SINCRONIZAR */,
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
                  ),
                ],
              ),
            ],
          ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!),
        ),
      ],
    );
  }
}
