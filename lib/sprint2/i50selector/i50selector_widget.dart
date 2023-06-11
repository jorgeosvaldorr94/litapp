import 'package:lit_app/comercio/inicio/i0_inicirsesion/i0_inicirsesion_widget.dart';
import 'package:lit_app/my_app.dart';


import '../../my_app.dart';

import '../../routes/routes.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i50selector_model.dart';
export 'i50selector_model.dart';

class I50selectorWidget extends StatefulWidget {
  const I50selectorWidget({Key? key}) : super(key: key);

  @override
  _I50selectorWidgetState createState() => _I50selectorWidgetState();
}

class _I50selectorWidgetState extends State<I50selectorWidget> {
  late I50selectorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I50selectorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //context.watch<FFAppState>();

    return GestureDetector(
  //  onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
    
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFF5A26),
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 390.0,
                          height: 449.8,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF5A26),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    154.0, 80.0, 153.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 83.0,
                                      height: 83.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                         /* FFLocalizations.of(context).(
                                            'p0bbct9i' /* LOGO */,
                                          )*/ 'LOGO',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    120.0, 62.0, 120.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                    onTap: () {
                                    
                           MaterialPageRoute route = MaterialPageRoute(builder: (context) => I0InicirsesionWidget());
                                Navigator.push(context, route);
                                    },
                                    child:Text(
                                      
                                      /*
                                      FFLocalizations.of(context).getText(
                                        'duv4r07f' /* INFLUENCER */,
                                      )*/'INFLUENCER',
                                      
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Brandon',
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 390.0,
                        height: 512.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              129.0, 192.0, 130.0, 192.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                 onTap: () {
                              /* final myAppState = context.findAncestorStateOfType<MyAppState>();
                               myAppState?.delegate.setInitialRoutePath(Uri.parse('/i0Inicirsesion'));*/
                               MaterialPageRoute route = MaterialPageRoute(builder: (context) => I0InicirsesionWidget());
                                Navigator.push(context, route);
                               
                              },
                                child:  Text(/*
                                FFLocalizations.of(context).getText(
                                  'x0nf9gfg' /* COMERCIO */,
                                )*/'COMERCIO',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Albra',
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ), 
                              ),
                              
                              ),
                              
                               
                               
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
