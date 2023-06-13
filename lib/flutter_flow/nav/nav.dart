import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => appStateNotifier.loggedIn
          ? I190splashWidget()
          : I50SelectordeperfilWidget(),
         
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? I190splashWidget()
              : I50SelectordeperfilWidget(),
        ),
        FFRoute(
          name: 'I50Selectordeperfil',
          path: '/i50Selectordeperfil',
          builder: (context, params) => I50SelectordeperfilWidget(),
        ),
        FFRoute(
          name: 'I00INICIO',
          path: '/i00inicio',
          builder: (context, params) => I00inicioWidget(),
        ),
        FFRoute(
          name: 'I07Influencers',
          path: '/i07Influencers',
          builder: (context, params) => I07InfluencersWidget(
            tipo: params.getParam('tipo', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'I08ReseteoContrasena',
          path: '/i08ReseteoContrasena',
          builder: (context, params) => I08ReseteoContrasenaWidget(),
        ),
        FFRoute(
          name: 'I11verificaciondecodigo',
          path: '/i11verificaciondecodigo',
          builder: (context, params) => I11verificaciondecodigoWidget(),
        ),
        FFRoute(
          name: 'I12NuevaContrasena',
          path: '/i12NuevaContrasena',
          builder: (context, params) => I12NuevaContrasenaWidget(),
        ),
        FFRoute(
          name: 'I01Registracionpaso1',
          path: '/i01Registracionpaso1',
          builder: (context, params) => I01Registracionpaso1Widget(
            isInfluencer: params.getParam('isInfluencer', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'I01RegistracionError',
          path: '/i01RegistracionError',
          builder: (context, params) => I01RegistracionErrorWidget(),
        ),
        FFRoute(
          name: 'I56datospersonales',
          path: '/i56datospersonales',
          builder: (context, params) => I56datospersonalesWidget(),
        ),
        FFRoute(
          name: 'I04linkaredes',
          path: '/i04linkaredes',
          builder: (context, params) => I04linkaredesWidget(),
        ),
        FFRoute(
          name: 'I0X1HOMEInfluencersinofertas',
          path: '/i0X1HOMEInfluencersinofertas',
          builder: (context, params) => I0X1HOMEInfluencersinofertasWidget(),
        ),
        FFRoute(
          name: 'I20listadodeofertas',
          path: '/i20listadodeofertas',
          builder: (context, params) => I20listadodeofertasWidget(),
        ),
        FFRoute(
          name: 'I21detalledeoferta',
          path: '/i21detalledeoferta',
          builder: (context, params) => I21detalledeofertaWidget(
            offer: params.getParam(
                'offer', ParamType.DocumentReference, false, ['offers']),
          ),
        ),
        FFRoute(
          name: 'I24missolicitudes',
          path: '/i24missolicitudes',
          builder: (context, params) => I24missolicitudesWidget(),
        ),
        FFRoute(
          name: 'I25Detalledesolicitud',
          path: '/i25Detalledesolicitud',
          builder: (context, params) => I25DetalledesolicitudWidget(
            offer: params.getParam(
                'offer', ParamType.DocumentReference, false, ['offers']),
          ),
        ),
        FFRoute(
          name: 'I28Atencionalcliente',
          path: '/i28Atencionalcliente',
          builder: (context, params) => I28AtencionalclienteWidget(),
        ),
        FFRoute(
          name: 'i194vacarchat',
          path: '/i194vacarchat',
          builder: (context, params) => I194vacarchatWidget(),
        ),
        FFRoute(
          name: 'I29Calendario',
          path: '/i29Calendario',
          builder: (context, params) => I29CalendarioWidget(),
        ),
        FFRoute(
          name: 'I30acciones',
          path: '/i30acciones',
          builder: (context, params) => I30accionesWidget(),
        ),
        FFRoute(
          name: 'I40Notificaciones',
          path: '/i40Notificaciones',
          builder: (context, params) => I40NotificacionesWidget(),
        ),
        FFRoute(
          name: 'I192sinnotificaciones',
          path: '/i192sinnotificaciones',
          builder: (context, params) => I192sinnotificacionesWidget(),
        ),
        FFRoute(
          name: 'I33ajustesdeperfil',
          path: '/i33ajustesdeperfil',
          builder: (context, params) => I33ajustesdeperfilWidget(),
        ),
        FFRoute(
          name: 'I37ajustesdeperfil',
          path: '/i37ajustesdeperfil',
          builder: (context, params) => I37ajustesdeperfilWidget(),
        ),
        FFRoute(
          name: 'I34Ajustescuenta',
          path: '/i34Ajustescuenta',
          builder: (context, params) => I34AjustescuentaWidget(),
        ),
        FFRoute(
          name: 'I186Atencionalcliente',
          path: '/i186Atencionalcliente',
          builder: (context, params) => I186AtencionalclienteWidget(),
        ),
        FFRoute(
          name: 'I38Metododepago',
          path: '/i38Metododepago',
          builder: (context, params) => I38MetododepagoWidget(),
        ),
        FFRoute(
          name: 'I190splash',
          path: '/i190splash',
          builder: (context, params) => I190splashWidget(),
        ),
        FFRoute(
          name: 'I50selector',
          path: '/i50selector',
          builder: (context, params) => I50selectorWidget(),
        ),
        FFRoute(
          name: 'I7',
          path: '/i7',
          builder: (context, params) => I7Widget(),
        ),
        FFRoute(
          name: 'I0Inicirsesion',
          path: '/i0Inicirsesion',
          builder: (context, params) => I0InicirsesionWidget(),
        ),
        FFRoute(
          name: 'I10RegistroComercio',
          path: '/i10RegistroComercio',
          builder: (context, params) => I10RegistroComercioWidget(),
        ),
        FFRoute(
          name: 'I11Comercios',
          path: '/i11Comercios',
          builder: (context, params) => I11ComerciosWidget(),
        ),
        FFRoute(
          name: 'errorregistro',
          path: '/errorregistro',
          builder: (context, params) => ErrorregistroWidget(),
        ),
        FFRoute(
          name: 'I12Registrarcomercio2',
          path: '/i12Registrarcomercio2',
          builder: (context, params) => I12Registrarcomercio2Widget(),
        ),
        FFRoute(
          name: 'I16redes',
          path: '/i16redes',
          builder: (context, params) => I16redesWidget(),
        ),
        FFRoute(
          name: 'op1',
          path: '/op1',
          builder: (context, params) => Op1Widget(
            isMember: params.getParam('isMember', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'I18Membresias',
          path: '/i18Membresias',
          builder: (context, params) => I18MembresiasWidget(
            titulo: params.getParam('titulo', ParamType.String),
            monto: params.getParam('monto', ParamType.String),
            subtitulo: params.getParam('subtitulo', ParamType.String),
            descripcion: params.getParam('descripcion', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'I156Bienvenido',
          path: '/i156Bienvenido',
          builder: (context, params) => I156BienvenidoWidget(),
        ),
        FFRoute(
          name: 'I21Iniciarsesion',
          path: '/i21Iniciarsesion',
          builder: (context, params) => I21IniciarsesionWidget(),
        ),
        FFRoute(
          name: 'I23cambiarpass',
          path: '/i23cambiarpass',
          builder: (context, params) => I23cambiarpassWidget(),
        ),
        FFRoute(
          name: 'I150verificarcodigo',
          path: '/i150verificarcodigo',
          builder: (context, params) => I150verificarcodigoWidget(),
        ),
        FFRoute(
          name: 'I30nuevapass',
          path: '/i30nuevapass',
          builder: (context, params) => I30nuevapassWidget(),
        ),
        FFRoute(
          name: 'I155iniciarsesion',
          path: '/i155iniciarsesion',
          builder: (context, params) => I155iniciarsesionWidget(),
        ),
        FFRoute(
          name: 'I191Bienvenido',
          path: '/i191Bienvenido',
          builder: (context, params) => I191BienvenidoWidget(),
        ),
        FFRoute(
          name: 'op5',
          path: '/op5',
          builder: (context, params) => Op5Widget(),
        ),
        FFRoute(
          name: 'I172oro',
          path: '/i172oro',
          builder: (context, params) => I172oroWidget(
            titulo: params.getParam('titulo', ParamType.String),
            monto: params.getParam('monto', ParamType.String),
            subtitulo: params.getParam('subtitulo', ParamType.String),
            descripcion: params.getParam('descripcion', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'I187bienvenido',
          path: '/i187bienvenido',
          builder: (context, params) => I187bienvenidoWidget(),
        ),
        FFRoute(
          name: 'I107crearnuevaoferta',
          path: '/i107crearnuevaoferta',
          builder: (context, params) => I107crearnuevaofertaWidget(
            fecha: params.getParam('fecha', ParamType.DateTime),
            descripcion: params.getParam('descripcion', ParamType.String),
            ubicacion: params.getParam('ubicacion', ParamType.FFPlace),
            cantidad: params.getParam('cantidad', ParamType.String),
            imagen: params.getParam('imagen', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'I77',
          path: '/i77',
          builder: (context, params) => I77Widget(),
        ),
        FFRoute(
          name: 'I196Foto',
          path: '/i196Foto',
          builder: (context, params) => I196FotoWidget(),
        ),
        FFRoute(
          name: 'I170',
          path: '/i170',
          builder: (context, params) => I170Widget(),
        ),
        FFRoute(
          name: 'op3',
          path: '/op3',
          builder: (context, params) => Op3Widget(),
        ),
        FFRoute(
          name: 'I166',
          path: '/i166',
          builder: (context, params) => I166Widget(),
        ),
        FFRoute(
          name: 'I197',
          path: '/i197',
          builder: (context, params) => I197Widget(),
        ),
        FFRoute(
          name: 'I112inicio',
          path: '/i112inicio',
          builder: (context, params) => I112inicioWidget(),
        ),
        FFRoute(
          name: 'I25misofertas',
          path: '/i25misofertas',
          builder: (context, params) => I25misofertasWidget(),
        ),
        FFRoute(
          name: 'I116ofertasrealizadas',
          path: '/i116ofertasrealizadas',
          builder: (context, params) => I116ofertasrealizadasWidget(),
        ),
        FFRoute(
          name: 'I184',
          path: '/i184',
          builder: (context, params) => I184Widget(),
        ),
        FFRoute(
          name: 'op4',
          path: '/op4',
          builder: (context, params) => Op4Widget(),
        ),
        FFRoute(
          name: 'I194Oro',
          path: '/i194Oro',
          builder: (context, params) => I194OroWidget(),
        ),
        FFRoute(
          name: 'I193oroupgrade',
          path: '/i193oroupgrade',
          builder: (context, params) => I193oroupgradeWidget(),
        ),
        FFRoute(
          name: 'I168',
          path: '/i168',
          builder: (context, params) => I168Widget(),
        ),
        FFRoute(
          name: 'I28Chat',
          path: '/i28Chat',
          builder: (context, params) => I28ChatWidget(),
        ),
        FFRoute(
          name: 'I201chatvacio',
          path: '/i201chatvacio',
          builder: (context, params) => I201chatvacioWidget(),
        ),
        FFRoute(
          name: 'I136Acciones',
          path: '/i136Acciones',
          builder: (context, params) => I136AccionesWidget(),
        ),
        FFRoute(
          name: 'I40notificacionescomercio',
          path: '/i40notificacionescomercio',
          builder: (context, params) => I40notificacionescomercioWidget(),
        ),
        FFRoute(
          name: 'I203sinnotificaciones',
          path: '/i203sinnotificaciones',
          builder: (context, params) => I203sinnotificacionesWidget(),
        ),
        FFRoute(
          name: 'I140ajustes',
          path: '/i140ajustes',
          builder: (context, params) => I140ajustesWidget(),
        ),
        FFRoute(
          name: 'I142ajustes2',
          path: '/i142ajustes2',
          builder: (context, params) => I142ajustes2Widget(),
        ),
        FFRoute(
          name: 'I143ajustes3',
          path: '/i143ajustes3',
          builder: (context, params) => I143ajustes3Widget(),
        ),
        FFRoute(
          name: 'I186atencionalcliente',
          path: '/i186atencionalcliente',
          builder: (context, params) => I186atencionalclienteWidget(),
        ),
        FFRoute(
          name: 'I145ayuda',
          path: '/i145ayuda',
          builder: (context, params) => I145ayudaWidget(),
        ),
        FFRoute(
          name: 'I146tengounproblema',
          path: '/i146tengounproblema',
          builder: (context, params) => I146tengounproblemaWidget(),
        ),
        FFRoute(
          name: 'I149estadodelacuenta',
          path: '/i149estadodelacuenta',
          builder: (context, params) => I149estadodelacuentaWidget(),
        ),
        FFRoute(
          name: 'I150seguridadyprivacidad',
          path: '/i150seguridadyprivacidad',
          builder: (context, params) => I150seguridadyprivacidadWidget(),
        ),
        FFRoute(
          name: 'I147ayuda',
          path: '/i147ayuda',
          builder: (context, params) => I147ayudaWidget(),
        ),
        FFRoute(
          name: 'I148ayudanoseencontro',
          path: '/i148ayudanoseencontro',
          builder: (context, params) => I148ayudanoseencontroWidget(),
        ),
        FFRoute(
          name: 'I38metododepagocomercio',
          path: '/i38metododepagocomercio',
          builder: (context, params) => I38metododepagocomercioWidget(),
        ),
        FFRoute(
          name: 'A2Inicio',
          path: '/a2Inicio',
          builder: (context, params) => A2InicioWidget(),
        ),
        FFRoute(
          name: 'A3Comercio',
          path: '/a3Comercio',
          builder: (context, params) => A3ComercioWidget(),
        ),
        FFRoute(
          name: 'A7Comercio',
          path: '/a7Comercio',
          builder: (context, params) => A7ComercioWidget(),
        ),
        FFRoute(
          name: 'roles',
          path: '/roles',
          builder: (context, params) => RolesWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    
    //  urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: params,
              queryParameters: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: params,
              queryParameters: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.toString().length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}
/*
extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

*/ 
extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routeInformationProvider.notifyListeners()  as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routeInformationProvider.notifyListeners()  as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (BuildContext context, GoRouterState state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/i50Selectordeperfil';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/188.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
