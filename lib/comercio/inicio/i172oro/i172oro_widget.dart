import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/influencers/registracion/i57calendario/i57calendario_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i172oro_model.dart';
export 'i172oro_model.dart';

class I172oroWidget extends StatefulWidget {
  const I172oroWidget({
    Key? key,
    required this.titulo,
    required this.monto,
    required this.subtitulo,
    required this.descripcion,
  }) : super(key: key);

  final String? titulo;
  final String? monto;
  final String? subtitulo;
  final String? descripcion;

  @override
  _I172oroWidgetState createState() => _I172oroWidgetState();
}

class _I172oroWidgetState extends State<I172oroWidget>
    with TickerProviderStateMixin {
  late I172oroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'iconOnPageLoadAnimation': AnimationInfo(
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
    'textOnPageLoadAnimation1': AnimationInfo(
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
    'textOnPageLoadAnimation2': AnimationInfo(
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
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-30.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 320.ms,
          duration: 600.ms,
          begin: Offset(-44.99999999999999, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => I172oroModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        barrierColor: Color(0x00000000),
        enableDrag: false,
        context: context,
        builder: (bottomSheetContext) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Padding(
              padding: MediaQuery.of(bottomSheetContext).viewInsets,
              child: I57calendarioWidget(),
            ),
          );
        },
      ).then((value) => setState(() {}));
    });
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 64.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: Color(0xFF949494),
                                size: 24.0,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['iconOnPageLoadAnimation']!),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'gsk89h3k' /* COMERCIO */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Brandon',
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 10.0, 24.0, 14.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                      'd2na4k4w' /* Membresías */,
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Albra',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 674.1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 19.0, 0.0, 9.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.titulo!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Albra',
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 2.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEA1616),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.monto!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Brandon',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.subtitulo!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Brandon',
                                      fontWeight: FontWeight.w300,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                31.0, 32.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.descripcion!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Brandon',
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: false,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                17.0, 90.0, 19.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'pdg5ejxn' /* Método de pago */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Albra',
                                        fontSize: 20.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController ??=
                                              FormFieldController<String>(
                                        _model.dropDownValue ??= '',
                                      ),
                                      options: ['0', '1', '2'],
                                      optionLabels: [
                                        FFLocalizations.of(context).getText(
                                          'cpf5fipj' /* Mensual 5% off */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9lvindz1' /* Trimestral 20% off */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mxcv1d89' /* Anual 50% off */,
                                        )
                                      ],
                                      onChanged: (val) async {
                                        setState(
                                            () => _model.dropDownValue = val);
                                        setState(() {
                                          FFAppState().pago =
                                              _model.dropDownValue!;
                                        });
                                      },
                                      width: 88.0,
                                      height: 32.0,
                                      searchHintTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Albra',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                useGoogleFonts: false,
                                              ),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'aofupgkd' /* Pago */,
                                      ),
                                      searchHintText: '',
                                      icon: Icon(
                                        Icons.money_off,
                                        size: 15.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      borderWidth: 0.0,
                                      borderRadius: 4.54,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 4.0, 12.0, 4.0),
                                      hidesUnderline: true,
                                      isSearchable: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                33.0, 31.0, 24.0, 9.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/version-horizontal-large-logo-mercado-pago_2.png',
                                      width: 92.0,
                                      height: 24.0,
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'efpu2cg1' /* latinoamerica */,
                                        ),
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
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/Path.png',
                                      width: 11.0,
                                      height: 7.3,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation1']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.88,
                              height: 2.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                22.0, 31.0, 24.0, 9.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/Captura_de_pantalla_2023-05-16_a_la(s)_16.35.25.png',
                                      width: 100.0,
                                      height: 28.0,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '4bd6laas' /* Global */,
                                        ),
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
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/Path.png',
                                      width: 11.0,
                                      height: 7.3,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation2']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.88,
                              height: 2.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 27.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final paymentResponse = await processStripePayment(
                            context,
                            amount: 5000,
                            currency: 'USD',
                            customerEmail: currentUserEmail,
                            customerName: currentUserDisplayName,
                            description: widget.subtitulo!,
                            allowGooglePay: false,
                            allowApplePay: false,
                            buttonColor: FlutterFlowTheme.of(context).tertiary,
                          );
                          if (paymentResponse.paymentId == null) {
                            if (paymentResponse.errorMessage != null) {
                              showSnackbar(
                                context,
                                'Error: ${paymentResponse.errorMessage}',
                              );
                            }
                            return;
                          }
                          _model.paymentId = paymentResponse.paymentId!;

                          final usersUpdateData = createUsersRecordData(
                            membershipActive: true,
                            lastPaymentId: _model.paymentId,
                            paymentDate: getCurrentTimestamp,
                            typePayment: _model.dropDownValue,
                            typeMembership: widget.titulo,
                          );
                          await currentUserReference!.update(usersUpdateData);
                          setState(() {
                            FFAppState().vinculacion = true;
                          });

                          context.goNamed('I187bienvenido');

                          setState(() {});
                        },
                        child: Container(
                          width: 391.0,
                          height: 82.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF74A41),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                27.57, 0.0, 27.57, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -0.1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 3.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '97yyrex0' /* CONTINUAR */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Brandon',
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
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
