import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'headercomercioruedita_model.dart';
export 'headercomercioruedita_model.dart';

class HeadercomerciorueditaWidget extends StatefulWidget {
  const HeadercomerciorueditaWidget({Key? key}) : super(key: key);

  @override
  _HeadercomerciorueditaWidgetState createState() =>
      _HeadercomerciorueditaWidgetState();
}

class _HeadercomerciorueditaWidgetState
    extends State<HeadercomerciorueditaWidget> {
  late HeadercomerciorueditaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadercomerciorueditaModel());
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
      decoration: BoxDecoration(
        color: Color(0x00F1F4F8),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 45.0, 15.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  color: FlutterFlowTheme.of(context).secondaryBackground,
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
                  padding: EdgeInsetsDirectional.fromSTEB(7.0, 7.0, 7.0, 7.0),
                  child: Image.asset(
                    'assets/images/Config.png',
                    width: 24.0,
                    height: 24.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'u1oifp41' /* COMERCIO */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Albra',
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('I40notificacionesComercio');
              },
              child: Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(7.0, 7.0, 7.0, 7.0),
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
            ),
          ],
        ),
      ),
    );
  }
}
