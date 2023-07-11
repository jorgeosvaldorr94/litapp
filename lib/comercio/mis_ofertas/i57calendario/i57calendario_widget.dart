import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i57calendario_model.dart';
export 'i57calendario_model.dart';

class I57calendarioWidget extends StatefulWidget {
  const I57calendarioWidget({Key? key}) : super(key: key);

  @override
  _I57calendarioWidgetState createState() => _I57calendarioWidgetState();
}

class _I57calendarioWidgetState extends State<I57calendarioWidget>
    with TickerProviderStateMixin {
  late I57calendarioModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
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
    _model = createModel(context, () => I57calendarioModel());
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
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              Navigator.pop(context);
            },
            child: Container(
              width: 350.0,
              height: 350.0,
              decoration: BoxDecoration(),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 340.0,
            height: 350.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: FlutterFlowCalendar(
                      color: FlutterFlowTheme.of(context).tertiary,
                      weekFormat: false,
                      weekStartsMonday: false,
                      initialDate: getCurrentTimestamp,
                      rowHeight: 35.0,
                      onChange: (DateTimeRange? newSelectedDate) async {
                        _model.calendarSelectedDay = newSelectedDate;
                        Navigator.pop(context);
                        setState(() {});
                      },
                      titleStyle: TextStyle(
                        fontFamily: 'Brandon',
                      ),
                      dayOfWeekStyle: TextStyle(
                        fontFamily: 'Brandon',
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                      dateStyle: TextStyle(
                        fontFamily: 'Brandon',
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 14.0,
                      ),
                      selectedDateStyle: TextStyle(
                        fontFamily: 'Brandon',
                        color: FlutterFlowTheme.of(context).tertiary,
                        fontWeight: FontWeight.w200,
                      ),
                      inactiveDateStyle: TextStyle(
                        fontFamily: 'Brandon',
                        color: FlutterFlowTheme.of(context).tertiary,
                        fontWeight: FontWeight.w200,
                      ),
                      locale: FFLocalizations.of(context).languageCode,
                    ),
                  ),
                ),
              ],
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        ),
      ],
    );
  }
}
