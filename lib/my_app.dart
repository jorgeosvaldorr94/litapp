import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'routes/routes.dart';
class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     /* home: Navigator(
        onPopPage: (route, result) {
         return true; 
        },
       pages: [
        MaterialPage(child: I50SelectordeperfilWidget())
       ], 
      ),*/
    initialRoute: Routes.I50Selectordeperfil,
      routes: appRoutes,
    );
  }}
 