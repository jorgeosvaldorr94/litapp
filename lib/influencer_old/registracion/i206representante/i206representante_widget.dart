import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/influencer_old/registracion/i207porcentaje/i207porcentaje_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i206representante_model.dart';
export 'i206representante_model.dart';

class I206representanteWidget extends StatefulWidget {
  const I206representanteWidget({Key? key}) : super(key: key);

  @override
  _I206representanteWidgetState createState() =>
      _I206representanteWidgetState();
}

class _I206representanteWidgetState extends State<I206representanteWidget> {
  late I206representanteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I206representanteModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 150.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(22.0, 15.0, 23.0, 0.0),
            child: TextFormField(
              controller: _model.textController1,
              obscureText: false,
              decoration: InputDecoration(
                hintText: FFLocalizations.of(context).getText(
                  '12x8hfkh' /* Nombre del representante */,
                ),
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
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
              validator: _model.textController1Validator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(22.0, 15.0, 23.0, 0.0),
            child: TextFormField(
              controller: _model.textController2,
              onFieldSubmitted: (_) async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: FlutterFlowTheme.of(context).primaryText,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: I207porcentajeWidget(),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              obscureText: false,
              decoration: InputDecoration(
                hintText: FFLocalizations.of(context).getText(
                  'ghqvofof' /* Porcentaje del representante */,
                ),
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
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
                suffixIcon: FaIcon(
                  FontAwesomeIcons.chevronDown,
                  color: Color(0xFF757575),
                  size: 18.0,
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
              validator: _model.textController2Validator.asValidator(context),
            ),
          ),
        ],
      ),
    );
  }
}
