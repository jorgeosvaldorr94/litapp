import 'package:lit_app/i190splash/i190splash_widget.dart';
 
import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import '../auth/firebase_auth/firebase_user_provider.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../backend/firebase/firebase_config.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/internationalization.dart';
import '../flutter_flow/nav/nav.dart';

import '../index.dart';
import '../my_app.dart';

import '../routes/routes.dart';

import '../backend/stripe/payment_manager.dart';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';


import '../routes/routes.dart';

class HomeLit extends StatefulWidget {
  const HomeLit();

  @override
  State<HomeLit> createState() => _HomeLitState();
}

class _HomeLitState extends State<HomeLit> {
  

  @override
  void initState() {
    super.initState();

   
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Text('funciona')
          );
      
    
 
    
  }
}

/*class HomeLit extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<HomeLit> createState() => _HomeLitState();

  static _HomeLitState of(BuildContext context) =>
      context.findAncestorStateOfType<_HomeLitState>()!;
}

class _HomeLitState extends State<HomeLit> {
  //Locale? _locale = FFLocalizations.getStoredLocale();
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late Stream<BaseAuthUser> userStream;

  // AppStateNotifier _appStateNotifier;
  //late GoRouter _router;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    /*_appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);*/
    userStream = litAppFirebaseUserStream();
     // ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(seconds: 1),
    //  () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

 

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'LitApp',
      localizationsDelegates: [
        
      ],
      //locale: _locale,
    /*  supportedLocales: const [
        Locale('es'),
        Locale('en'),
      ],*/
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
     
    );
  }
}*/