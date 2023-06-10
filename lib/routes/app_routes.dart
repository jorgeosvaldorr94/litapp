import 'dart:js';

import 'package:flutter/material.dart';
import 'package:lit_app/index.dart';
import 'package:lit_app/influencers/entrada/i00inicio/i00inicio_widget.dart';
import '../i190splash/i190splash_widget.dart';
import '../sprint1/homelit.dart';
import '../sprint2/i50selector/i50selector_widget.dart';
import 'routes.dart';

Map<String, WidgetBuilder> get appRoutes {
  return{
    Routes.initialize: (_) =>  HomeLit() ,
    Routes.I50Selectordeperfil:(_) => I50selectorWidget(),
    Routes.I00INICIO:(_) => I00inicioWidget()

  };
}