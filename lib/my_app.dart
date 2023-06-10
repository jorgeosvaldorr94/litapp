import 'package:flutter/material.dart';
import 'package:lit_app/influencers/entrada/i00inicio/i00inicio_widget.dart';
import 'package:lit_app/sprint1/homelit.dart';
import 'flutter_flow/internationalization.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';
import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'routes/app_routes.dart';
import 'routes/routes.dart';
class MyApp extends StatelessWidget {
 const MyApp();
  @override
  Widget build(BuildContext context) {

    
    return  MaterialApp(
     /* home: Navigator(
       pages: [
        MaterialPage(child: I00inicioWidget())
       ], 
      ),*/
    initialRoute: Routes.initialize,
     routes: appRoutes,
    );
  }
  
  
  
  }
 
 
  
  
 