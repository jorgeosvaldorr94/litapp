import '/backend/firebase_storage/storage.dart';
import '/comercio/mis_ofertas/campanaconinfluencer/campanaconinfluencer_widget.dart';
import '/comercio/mis_ofertas/cantidaddepublicaciones/cantidaddepublicaciones_widget.dart';
import '/comercio/mis_ofertas/formatopublicacion/formatopublicacion_widget.dart';
import '/comercio/mis_ofertas/niveldeinfluencer/niveldeinfluencer_widget.dart';
import '/comercio/mis_ofertas/plataforma/plataforma_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'crear_nueva_oferta1_model.dart';
export 'crear_nueva_oferta1_model.dart';

class CrearNuevaOferta1Widget extends StatefulWidget {
  const CrearNuevaOferta1Widget({Key? key}) : super(key: key);

  @override
  _CrearNuevaOferta1WidgetState createState() =>
      _CrearNuevaOferta1WidgetState();
}

class _CrearNuevaOferta1WidgetState extends State<CrearNuevaOferta1Widget>
    with TickerProviderStateMixin {
  late CrearNuevaOferta1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
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
    _model = createModel(context, () => CrearNuevaOferta1Model());

    _model.cantidadiController ??= TextEditingController();
    _model.descripcionController ??= TextEditingController();
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 45.0, 15.0, 0.0),
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
                                  blurRadius: 3.0,
                                  color: Color(0x83F8C0C0),
                                  offset: Offset(0.0, 3.0),
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
                                context.safePop();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 24.0,
                              ),
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'tvq6sv8v' /* Nueva Oferta */,
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
                          Container(
                            width: 80.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showAlignedDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              isGlobal: true,
                              avoidOverflow: false,
                              targetAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () => FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode),
                                    child: NiveldeinfluencerWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Container(
                            width: 180.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.3),
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFAppState().nivel,
                                      'Nivel de influencer',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Brandon',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
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
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 8.0, 0.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showAlignedDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              isGlobal: true,
                              avoidOverflow: false,
                              targetAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () => FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode),
                                    child: CampanaconinfluencerWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Container(
                            width: 180.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.3),
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFAppState().campana,
                                      'Campaña con influencer',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Brandon',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
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
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 8.0, 0.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showAlignedDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              isGlobal: true,
                              avoidOverflow: false,
                              targetAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () => FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode),
                                    child: PlataformaWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Container(
                            width: 180.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.3),
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFAppState().plataforma,
                                      'Plataforma',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Brandon',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
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
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 8.0, 0.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showAlignedDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              isGlobal: true,
                              avoidOverflow: false,
                              targetAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () => FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode),
                                    child: FormatopublicacionWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Container(
                            width: 180.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.3),
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFAppState().formato,
                                      'Formato de publicación',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Brandon',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
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
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 8.0, 0.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showAlignedDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              isGlobal: true,
                              avoidOverflow: false,
                              targetAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () => FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode),
                                    child: CantidaddepublicacionesWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Container(
                            width: 180.0,
                            height: 50.0,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.3),
                                  child: Text(
                                    valueOrDefault<String>(
                                      FFAppState().cantidadp,
                                      'Cantidad de publicaciones',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Brandon',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
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
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 8.0, 0.0),
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
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
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 15.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final _datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                );

                                TimeOfDay? _datePickedTime;
                                if (_datePickedDate != null) {
                                  _datePickedTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.fromDateTime(
                                        getCurrentTimestamp),
                                  );
                                }

                                if (_datePickedDate != null &&
                                    _datePickedTime != null) {
                                  setState(() {
                                    _model.datePicked = DateTime(
                                      _datePickedDate.year,
                                      _datePickedDate.month,
                                      _datePickedDate.day,
                                      _datePickedTime!.hour,
                                      _datePickedTime.minute,
                                    );
                                  });
                                }
                              },
                              child: Container(
                                width: 130.0,
                                height: 50.0,
                                decoration: BoxDecoration(),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.3),
                                      child: Text(
                                        dateTimeFormat(
                                          'd/M H:mm',
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Brandon',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
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
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 8.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: TextFormField(
                                  controller: _model.cantidadiController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'h7ledhhf' /* Cantidad de influencer  */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Brandon',
                                          color: Colors.black,
                                          fontSize: 14.0,
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
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
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Brandon',
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        useGoogleFonts: false,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model.cantidadiControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            35.0, 16.0, 35.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 16.0, 15.0, 0.0),
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
                                  '8ptbc2ka' /* Ubicacion */,
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
                          EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.categoriaValueController ??=
                            FormFieldController<String>(
                          _model.categoriaValue ??= '',
                        ),
                        options: ['Fitness', 'Food'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'kd6mfxkv' /* Fitness */,
                          ),
                          FFLocalizations.of(context).getText(
                            '0420w47y' /* Food */,
                          )
                        ],
                        onChanged: (val) =>
                            setState(() => _model.categoriaValue = val),
                        height: 50.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Brandon',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          'eponel5v' /* Selecciona Categoria... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 30.0, 15.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'vwebs8ww' /* Descripción del trabajo */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Brandon',
                              fontSize: 18.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.descripcionController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Roboto',
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Brandon',
                                    fontSize: 14.0,
                                    useGoogleFonts: false,
                                  ),
                          maxLines: 5,
                          validator: _model.descripcionControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          15.0, 10.0, 15.0, 87.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 180.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                color: Color(0x44FF5A26),
                                borderRadius: BorderRadius.circular(11.0),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    imageQuality: 70,
                                    allowPhoto: true,
                                    includeBlurHash: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    setState(
                                        () => _model.isDataUploading = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      setState(() {
                                        _model.uploadedLocalFile =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      setState(() {});
                                      return;
                                    }
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'y7p4899b' /* Adjuntar Referencia */,
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
                                    Image.asset(
                                      'assets/images/Vectorrrrr.png',
                                      width: 17.0,
                                      height: 15.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                _model.uploadedFileUrl,
                                'data:image/jpeg;base64,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',
                              ),
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'I107Crearnuevaoferta2',
                          queryParameters: {
                            'fecha': serializeParam(
                              _model.datePicked,
                              ParamType.DateTime,
                            ),
                            'descripcion': serializeParam(
                              _model.descripcionController.text,
                              ParamType.String,
                            ),
                            'ubicacion': serializeParam(
                              _model.placePickerValue,
                              ParamType.FFPlace,
                            ),
                            'cantidad': serializeParam(
                              _model.cantidadiController.text,
                              ParamType.String,
                            ),
                            'imagen': serializeParam(
                              _model.uploadedFileUrl,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        height: 87.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
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
                              Align(
                                alignment: AlignmentDirectional(0.0, -0.1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 3.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ui77hvq8' /* CONTINUAR */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
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
