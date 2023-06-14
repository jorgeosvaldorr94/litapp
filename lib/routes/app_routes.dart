
import 'package:flutter/material.dart';
import 'package:lit_app/comercio/inicio/i7/i7_widget.dart';
import 'package:lit_app/index.dart';
import 'package:lit_app/influencers/ajustes/i37ajustesdeperfil/i37ajustesdeperfil_widget.dart';
import 'package:lit_app/influencers/entrada/i00inicio/i00inicio_widget.dart';
import 'package:lit_app/influencers/entrada/i0_x1_h_o_m_e_influencersinofertas/i0_x1_h_o_m_e_influencersinofertas_widget.dart';
import 'package:lit_app/influencers/iniciar_sesion/i08_reseteo_contrasena/i08_reseteo_contrasena_widget.dart';
import 'package:lit_app/influencers/notificaciones/i40_notificaciones/i40_notificaciones_widget.dart';
import 'package:lit_app/influencers/registracion/i01_registracionpaso1/i01_registracionpaso1_widget.dart';
import '../comercio/inicio/i0_inicirsesion/i0_inicirsesion_widget.dart';
import '../i190splash/i190splash_widget.dart';
import '../influencers/entrada/i00inicio/i00inicio_widget.dart';
 
import '../influencers/iniciar_sesion/i07_influencers/i07_influencers_widget.dart';
import '../sprint1/homelit.dart';
import '../sprint2/i50selector/i50selector_widget.dart';
import 'routes.dart';

Map<String, WidgetBuilder> get appRoutes {
  var tipo ;
  var isInfluencer;
  return{
    Routes.initialize: (_) =>  I50selectorWidget() ,
    Routes.I50Selectordeperfil:(_) => I50selectorWidget(),
    Routes.I00INICIO:(_) => I00inicioWidget(),

    Routes.I0Inicirsesion:(_) =>I0InicirsesionWidget(),
    Routes.I07Influencers: (_) =>I07InfluencersWidget(tipo: tipo),
    Routes.I01Registracionpaso1:  (_) =>I01Registracionpaso1Widget(isInfluencer: isInfluencer),
    Routes.I7:(_) => I7Widget(),
    Routes.I08ReseteoContrasena:(_) => I08ReseteoContrasenaWidget(),
    Routes.I0X1HOMEInfluencersinofertas :(_) => I0X1HOMEInfluencersinofertasWidget(),
    Routes.I37ajustesdeperfil:(_) => I37ajustesdeperfilWidget(),
    Routes.I40Notificaciones:(_) => I40NotificacionesWidget(),
    Routes.I190splash:(_) =>I190splashWidget()
  };
}