import 'package:flutter/material.dart';
import 'package:lit_app/index.dart';
import '../i190splash/i190splash_widget.dart';
import '../sprint2/i50selector/i50selector_widget.dart';
import 'routes.dart';

Map<String, WidgetBuilder> get appRoutes {
  return{
    Routes.initialize: (context) =>  I190splashWidget() ,
    Routes.I50Selectordeperfil:(context) => I50selectorWidget()
    

  };
}