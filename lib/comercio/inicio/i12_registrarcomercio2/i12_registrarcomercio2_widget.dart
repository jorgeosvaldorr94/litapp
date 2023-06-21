import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import '/influencers/registracion/i207rol/i207rol_widget.dart';
import '/influencers/registracion/i55_genero/i55_genero_widget.dart';
import '/influencers/registracion/i57calendario/i57calendario_widget.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i12_registrarcomercio2_model.dart';
export 'i12_registrarcomercio2_model.dart';

class I12Registrarcomercio2Widget extends StatefulWidget {
  const I12Registrarcomercio2Widget({Key? key}) : super(key: key);

  @override
  _I12Registrarcomercio2WidgetState createState() =>
      _I12Registrarcomercio2WidgetState();
}

class _I12Registrarcomercio2WidgetState
    extends State<I12Registrarcomercio2Widget> with TickerProviderStateMixin {
  late I12Registrarcomercio2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
    _model = createModel(context, () => I12Registrarcomercio2Model());

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

    _model.nombreController ??= TextEditingController();
    _model.encargadoController ??= TextEditingController();
    _model.codigoController1 ??= TextEditingController();
    _model.codigoController2 ??= TextEditingController();
    _model.descripcionController ??= TextEditingController();
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
                          EdgeInsetsDirectional.fromSTEB(80.0, 42.0, 79.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 1.0, 10.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '4an6um2f' /* 1 */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Brandon',
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 0.0, 3.0, 0.0),
                            child: Container(
                              width: 68.0,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF74A41),
                              ),
                            ),
                          ),
                          Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF74A41),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 1.0, 8.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'a1rx3ldz' /* 2 */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Brandon',
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 0.0, 3.0, 0.0),
                            child: Container(
                              width: 68.0,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF74A41),
                              ),
                            ),
                          ),
                          Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 1.0, 8.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '5a94gpds' /* 3 */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Brandon',
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 9.0, 0.0, 0.0),
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
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'fp6qnrfk' /* COMERCIO */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Brandon',
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
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
                          22.0, 31.0, 222.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'xi2gnrlg' /* Registrar */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Albra',
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(22.0, 15.0, 23.0, 0.0),
                      child: TextFormField(
                        controller: _model.nombreController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'j6x6osr0' /* Nombre del comercio */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Brandon',
                                    fontSize: 18.0,
                                    useGoogleFonts: false,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.nombreControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(22.0, 15.0, 23.0, 0.0),
                      child: TextFormField(
                        controller: _model.encargadoController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'mfgksfev' /* Nombre y apellido del encargad... */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Brandon',
                                    fontSize: 18.0,
                                    useGoogleFonts: false,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.encargadoControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            barrierColor: Color(0x1E000000),
                            enableDrag: false,
                            context: context,
                            builder: (bottomSheetContext) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_unfocusNode),
                                child: Padding(
                                  padding: MediaQuery.of(bottomSheetContext)
                                      .viewInsets,
                                  child: Container(
                                    height: double.infinity,
                                    child: I55GeneroWidget(),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (bottomSheetContext) {
                                  return GestureDetector(
                                    onTap: () => FocusScope.of(context)
                                        .requestFocus(_unfocusNode),
                                    child: Padding(
                                      padding: MediaQuery.of(bottomSheetContext)
                                          .viewInsets,
                                      child: Container(
                                        height: double.infinity,
                                        child: I207rolWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.3),
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFAppState().rol,
                                      'Rol del responsable',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Brandon',
                                          fontSize: 18.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(22.0, 15.0, 23.0, 0.0),
                      child: TextFormField(
                        controller: _model.codigoController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'i055cyxr' /* Categoria */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Brandon',
                                    fontSize: 18.0,
                                    useGoogleFonts: false,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.codigoController1Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(22.0, 15.0, 23.0, 0.0),
                      child: TextFormField(
                        controller: _model.codigoController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'ttva26fg' /* Codigo Promocional (opcional) */,
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Brandon',
                                    fontSize: 18.0,
                                    useGoogleFonts: false,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.codigoController2Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: double.infinity,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 6.0),
                              child: FlutterFlowPlacePicker(
                                iOSGoogleMapsApiKey:
                                    'AIzaSyCi7EDPzMEMt9MVyMd2QwpofOr5kMEKB1M',
                                androidGoogleMapsApiKey:
                                    'AIzaSyBAoITEdz8AmHCZDLBRWWj-p1ZO3fBD9vM',
                                webGoogleMapsApiKey:
                                    'AIzaSyAKNM_5ReGVVyXlmP8gc3GU2PVZoMIzyNs',
                                onSelect: (place) async {
                                  setState(
                                      () => _model.placePickerValue = place);
                                },
                                defaultText:
                                    FFLocalizations.of(context).getText(
                                  '9gc8jwwg' /* Ubicacion */,
                                ),
                                buttonOptions: FFButtonOptions(
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Albra',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        useGoogleFonts: false,
                                      ),
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: Icon(
                                Icons.location_pin,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 17.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '7hxnsh1r' /* Descripción del comercio */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Brandon',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 100.0),
                                        child: TextFormField(
                                          controller:
                                              _model.descripcionController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLines: 5,
                                          validator: _model
                                              .descripcionControllerValidator
                                              .asValidator(context),
                                        ),
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
                          final usersUpdateData = createUsersRecordData(
                            active: false,
                            pais: _model.placePickerValue.country,
                            ubicacion: _model.placePickerValue.latLng,
                            comercio: true,
                            nombrecomercio: _model.nombreController.text,
                            nombreyapellidodeencargado:
                                _model.encargadoController.text,
                            rolcomercio: FFAppState().rol,
                            categoria: _model.codigoController1.text,
                            codigo: _model.codigoController2.text,
                            descripcion: _model.descripcionController.text,
                          );
                          await currentUserReference!.update(usersUpdateData);

                          context.pushNamed('I16redes');
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
                                            '8ltnpvhq' /* CONTINUAR */,
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
                          animationsMap['containerOnPageLoadAnimation2']!),
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
