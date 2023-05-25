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
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 9.0, 39.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 47.0,
              height: 46.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset(
                'assets/images/setting.png',
                width: 24.0,
                height: 24.0,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'u1oifp41' /* COMERCIO */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Brandon',
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
            Image.asset(
              'assets/images/Group_1000003360.png',
              width: 26.3,
              height: 22.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
