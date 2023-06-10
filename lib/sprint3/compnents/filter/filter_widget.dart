import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_model.dart';
export 'filter_model.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  late FilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterModel());
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
      width: 114.0,
      height: 64.0,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(0.0, 2.0),
          )
        ],
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 114.0,
                height: 31.0,
                decoration: BoxDecoration(
                  color: Color(0x59DDDDDD),
                  borderRadius: BorderRadius.circular(4.5),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(14.0, 7.0, 11.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                       /*FFLocalizations.of(context).getText(
                          'fq6b649z' /* Mejor a peor */,
                        )*/'',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Brandon',
                              fontSize: 9.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.5),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).accent2,
                        ),
                        child: Checkbox(
                          value: _model.checkboxValue1 ??= true,
                          onChanged: (newValue) async {
                            setState(() => _model.checkboxValue1 = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).tertiary,
                          checkColor: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 11.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                /*  FFLocalizations.of(context).getText(
                    'ap6510n3' /* Mas recientes */,
                  )*/'',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Brandon',
                        fontSize: 9.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
                Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.5),
                      ),
                    ),
                    unselectedWidgetColor: Color(0x2F000000),
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue2 ??= false,
                    onChanged: (newValue) async {
                      setState(() => _model.checkboxValue2 = newValue!);
                    },
                    activeColor: FlutterFlowTheme.of(context).tertiary,
                    checkColor: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
