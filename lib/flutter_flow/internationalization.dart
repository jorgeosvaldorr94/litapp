import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // I50Selectordeperfil
  {
    'rr00kqho': {
      'es': 'LOGO',
      'en': 'LOGO',
    },
    'w668u0ep': {
      'es': 'INFLUENCER',
      'en': 'INFLUENCERS',
    },
    '3floxn8e': {
      'es': 'COMERCIO',
      'en': 'TRADE',
    },
    '5lwiyoer': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I00INICIO
  {
    'llo98c4u': {
      'es': 'NOMBRE DE LA APP',
      'en': 'APP NAME',
    },
    'lmn7wvkx': {
      'es': 'LOGO',
      'en': 'LOGO',
    },
    '387f0t2a': {
      'es': 'INICIAR SESION',
      'en': 'LOG IN',
    },
    '3bm7q5r2': {
      'es': 'REGISTRARSE',
      'en': 'RESGISTER',
    },
    'dexeokal': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // I07Influencers
  {
    'aq6mnpob': {
      'es': 'Iniciar Sesión',
      'en': 'Log in',
    },
    'wjn72zq7': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    '233sok0q': {
      'es': 'Olvidé mi mail',
      'en': 'I forgot my email',
    },
    '28oyqje9': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'ucfw6ed1': {
      'es': 'Olvide mi contraseña',
      'en': 'I forgot my password',
    },
    'dso4mwgj': {
      'es': 'Use las redes sociales para iniciar sesion',
      'en': 'Your password has been changed\ncorrectly.',
    },
    '1gwusawk': {
      'es': 'INICIAR SESION',
      'en': 'LOG IN',
    },
    'wcx3kh6r': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I08ReseteoContrasena
  {
    'qany14gn': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    '3nbg97cr': {
      'es': 'Cambiar Contraseña',
      'en': 'Change Password',
    },
    '4zv7bgjg': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'i5eq2q5h': {
      'es': 'ENVIAR CÓDIGO',
      'en': 'SEND CODE',
    },
    '228662sx': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I11verificaciondecodigo
  {
    'frzgb4aa': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    'uefxx5l1': {
      'es': 'Cambiar Contraseña',
      'en': 'Change Password',
    },
    '7a21mb0m': {
      'es': 'REENVIAR CÓDIGO',
      'en': 'RESEND CODE',
    },
    'mi7uy3m7': {
      'es': '¿No te llegó el mail? Contactarme \ncon ',
      'en': 'Didn\'t you get the email? contact me\nwith',
    },
    't9g1drhx': {
      'es': 'soporte técnico',
      'en': 'technical support',
    },
    'zfglz8q3': {
      'es': 'ENVIAR CÓDIGO',
      'en': 'SEND CODE',
    },
    'kpzlikr4': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I12NuevaContrasena
  {
    'h3zzqumw': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    'r8b94hwd': {
      'es': 'Nueva Contraseña',
      'en': 'New Password',
    },
    'z6kwrj8c': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'fq83067z': {
      'es': 'Nueva Contraseña',
      'en': 'New Password',
    },
    '2jrf6sqv': {
      'es': 'CONFIRMAR',
      'en': 'CONFIRM',
    },
    'btks0r4k': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I01Registracionpaso1
  {
    '7xwzd3ul': {
      'es': '1',
      'en': '1',
    },
    'mqz5xehl': {
      'es': '2',
      'en': '2',
    },
    'up8ct5i7': {
      'es': '3',
      'en': '3',
    },
    'ulhvsyu8': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    'vlffg9jx': {
      'es': 'Registrar',
      'en': 'Log in',
    },
    '2ri837qc': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    '4xo0u3yc': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    '912gsmqc': {
      'es': 'Confirmar Contraseña',
      'en': 'Confirm Password',
    },
    'pvt3efh2': {
      'es': 'Use las redes sociales para registrarte',
      'en': 'Your password has been changed\ncorrectly.',
    },
    'iq6vnd6p': {
      'es': '¿Ya tenés cuenta?',
      'en': 'Do you already have an account?',
    },
    '8mft0x2d': {
      'es': 'Ingresá acá',
      'en': 'enter here',
    },
    'buyqwset': {
      'es': 'Acepto los términos y condiciones',
      'en': 'I accept the terms and conditions',
    },
    'as0gfc3t': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum....Lorem ipsum dolor sit amet consectetur ',
      'en':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum....Lorem ipsum dolor sit amet consectetur',
    },
    'psmak8r9': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'gky8muki': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I01RegistracionError
  {
    'aa04pzjo': {
      'es': '1',
      'en': '1',
    },
    '9amjl0ol': {
      'es': '2',
      'en': '2',
    },
    '18h097kj': {
      'es': '3',
      'en': '3',
    },
    'vsgtflkq': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    'o8dde5cv': {
      'es': 'Registrar',
      'en': 'Log in',
    },
    'mqb6hqws': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    '0z9dn8j0': {
      'es': 'Confirmar E-mail',
      'en': 'confirm email',
    },
    '19v376ks': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'n5habt6o': {
      'es': 'Confirmar Contraseña',
      'en': 'Confirm Password',
    },
    '1xirq9hd': {
      'es': 'Acepto los términos y condiciones',
      'en': 'I accept the terms and conditions',
    },
    'aw95f65f': {
      'es': '¿Ya tenés cuenta?',
      'en': 'Do you already have an account?',
    },
    '1gjtlsty': {
      'es': 'Ingresá acá',
      'en': 'enter here',
    },
    'ucdiuwdz': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'cyzwki34': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I56datospersonales
  {
    '8rah3s6g': {
      'es': '1',
      'en': '1',
    },
    '3n4ow2vh': {
      'es': '2',
      'en': '2',
    },
    'c74gdxne': {
      'es': '3',
      'en': '3',
    },
    '4v2vstcp': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    '6ly8g8cb': {
      'es': 'Registrar',
      'en': 'to register',
    },
    'cv8kkjdf': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'h3hljv0n': {
      'es': 'Apellido',
      'en': 'Last name',
    },
    'xdsm5lnx': {
      'es': 'Cdo. Área',
      'en': 'cdo. Area',
    },
    'e8961qws': {
      'es': 'Teléfono (opcional)',
      'en': 'Telephone (optional)',
    },
    '4sqa8teb': {
      'es': 'Ubicacion',
      'en': '',
    },
    'hfdku8xz': {
      'es': 'Profesion',
      'en': 'Profession',
    },
    'adighjht': {
      'es': 'Representante',
      'en': 'Representative',
    },
    'tiaej61e': {
      'es': 'Nombre del representante',
      'en': 'Profession',
    },
    'xseeh191': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    '480wstff': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I04linkaredes
  {
    'yc79699d': {
      'es': '1',
      'en': '1',
    },
    '4gyxkq1h': {
      'es': '2',
      'en': '2',
    },
    'vl4vkq5n': {
      'es': '3',
      'en': '3',
    },
    'jdmhlupr': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    'x50fbynn': {
      'es': 'Link a tus redes',
      'en': 'Link to your networks',
    },
    'qyrxvddu': {
      'es': 'Al menos 1 obligatorio *',
      'en': 'At least 1 required *',
    },
    'rlx7q2t0': {
      'es': 'Instagram',
      'en': 'instagram',
    },
    'xuh85w3t': {
      'es': 'Tik Tok',
      'en': 'Tik Tok',
    },
    'dpm3r9bd': {
      'es': 'Youtube',
      'en': 'Youtube',
    },
    'vq0h09ib': {
      'es': 'Twitch',
      'en': 'twitch',
    },
    'hdhstc83': {
      'es': 'Portfolio',
      'en': 'portfolio',
    },
    'nvn6gagv': {
      'es': 'Link de tu portfolio',
      'en': 'Link of your portfolio',
    },
    'hwza0lfx': {
      'es': 'Fotos de tu portfolio (opcionales)',
      'en': 'Photos from your portfolio (optional)',
    },
    'ja6cophw': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    '28eeqmbb': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I0X1HOMEInfluencersinofertas
  {
    'wbjtqnk7': {
      'es': 'Influencer',
      'en': 'Influencers',
    },
    'e47wwcmq': {
      'es': 'LOGO',
      'en': 'LOGO',
    },
    'rykpmmst': {
      'es': '¡Bienvenida a Lit!',
      'en': 'Welcome to lit!',
    },
    'acrwulx4': {
      'es': 'Hola ',
      'en': 'Hello',
    },
    'wt1ljlrr': {
      'es': 'Wanda! ',
      'en': 'Wanda!',
    },
    'sdrvseik': {
      'es':
          'Ya sos parte de nuestra\ncomunidad. Aceptá tu primera oferta y empezá\na disfrutar miles de experiencias',
      'en':
          'You are already part of our\ncommunity. Accept your first offer and get started\nto enjoy thousands of experiences',
    },
    'fvwz2nep': {
      'es': 'Todavía no tenés ofertas!',
      'en': 'You still have no offers!',
    },
    'bxz4vove': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I20listadodeofertas
  {
    'c2cdvwew': {
      'es': 'Comida',
      'en': 'Meal',
    },
    'xa276vi6': {
      'es': '2Km',
      'en': '2Km',
    },
    'cvawfwdg': {
      'es': 'Fitness',
      'en': 'Meal',
    },
    'urh6z0sx': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    '72d6rutm': {
      'es': 'De 18:00 - 19:30pm',
      'en': 'From 18:00 - 19:30pm',
    },
    '2lou2ygw': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    '7cf3y9q3': {
      'es': '2Km',
      'en': '2Km',
    },
    'eyoqpx3z': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    'ksc2v8qr': {
      'es': 'De 18:00 - 19:30pm',
      'en': 'From 18:00 - 19:30pm',
    },
    'amuprdwt': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    'r1wrk7l2': {
      'es': '2Km',
      'en': '2Km',
    },
    'wmht69g9': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    '32muf5jv': {
      'es': 'De 18:00 - 19:30pm',
      'en': 'From 18:00 - 19:30pm',
    },
    '9g3mmwko': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    '5dtuwbbh': {
      'es': '2Km',
      'en': '2Km',
    },
    '2go60xkj': {
      'es': 'Buenos Aires',
      'en': 'Influencers',
    },
    'b70am1wt': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I21detalledeoferta
  {
    '5tsctyxi': {
      'es': '2km',
      'en': '2km',
    },
    '337cqpn1': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    'pvr1oh5j': {
      'es': 'Av. Santa Fe 19888',
      'en': 'Av. Santa Fe 19888',
    },
    'i1txylr2': {
      'es': 'Código - AD1234 ',
      'en': 'Code - AD1234',
    },
    '2omyeu81': {
      'es':
          'Disfrutá una porción de pan o ensalada de \ncortesía + una Provoleta Negroni o unos\nLangostinos de Roca o unas Papas Bravas + 2 \ntragos a elección.',
      'en':
          'Enjoy a serving of bread or salad\ncourtesy + a Provoleta Negroni or some\nRock Prawns or some Papas Bravas + 2\ndrinks of choice',
    },
    '8dcqwbka': {
      'es': 'Dejanos tu reseña en Google!\n',
      'en': 'Leave us your review on Google!',
    },
    '485a9hew': {
      'es': 'ACEPTAR',
      'en': 'ACCEPT',
    },
    '236yjdpb': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I24missolicitudes
  {
    'hkud7ua5': {
      'es': 'Mis solicitudes',
      'en': 'My requests',
    },
    'yp8qpp6k': {
      'es': 'En proceso',
      'en': 'In progress',
    },
    'vtwxsefq': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I25Detalledesolicitud
  {
    'cg0497t5': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    'hwbv57ly': {
      'es': 'Pasá entre las 18:00 - 19:30pm',
      'en': 'It happens between 18:00 - 19:30pm',
    },
    'j0pu6nkh': {
      'es': '2km',
      'en': '2km',
    },
    'nh5vrgow': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    '2nzzldb6': {
      'es': 'Av. Santa Fe 19888',
      'en': 'Av. Santa Fe 19888',
    },
    'fjb9imrn': {
      'es': 'Código - AD1234 ',
      'en': 'Code - AD1234',
    },
    's0uld9cm': {
      'es':
          'Disfrutá una porción de pan o ensalada de \ncortesía + una Provoleta Negroni o unos\nLangostinos de Roca o unas Papas Bravas + 2 \ntragos a elección.',
      'en':
          'Enjoy a serving of bread or salad\ncourtesy + a Provoleta Negroni or some\nRock Prawns or some Papas Bravas + 2\ndrinks of choice',
    },
    'bjdgeooc': {
      'es': 'Dejanos tu reseña en Google!\n',
      'en': 'Leave us your review on Google!',
    },
    'dngvnz67': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // I28Atencionalcliente
  {
    'jnh6bo3s': {
      'es': 'Atención al Cliente',
      'en': 'Customer Support',
    },
    'nn73bwaq': {
      'es': 'Martes, 15',
      'en': 'Tuesday, 15',
    },
    'iq76rwiw': {
      'es':
          'Ey! ¿Cómo podemos ayudarte?\nSi estás teniendo problemas\ncon la app mandá:',
      'en':
          'Hey! how can we help you?\nIf you\'re having trouble\nwith the app send:',
    },
    'wyiz1bl1': {
      'es': '. ',
      'en': '.',
    },
    '1qs1cicz': {
      'es': '1. Tengo un problema\ncon la oferta.',
      'en': '1. I have a problem\nwith the offer.',
    },
    'x7ko1hxh': {
      'es': '8.30pm',
      'en': '8.30pm',
    },
    'r8izvh1o': {
      'es':
          'Hola! ¿Qué tal? Sí,\ngracias! 1. tengo un\nproblema con la\noferta.',
      'en':
          'Hello! How are you? Yeah,\nthank you! 1. I have a\nproblem with\noffer.',
    },
    'dm1jly9t': {
      'es': '8.33pm',
      'en': '8.33pm',
    },
    '2gyc62sg': {
      'es': 'Escribir...',
      'en': 'Write...',
    },
    'uub2pr8w': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // i194vacarchat
  {
    'sq05mjol': {
      'es': 'Atención al Cliente',
      'en': 'Customer Support',
    },
    'dlwdojew': {
      'es': 'Martes, 15',
      'en': 'Tuesday, 15',
    },
    'ih2iqd6c': {
      'es': 'Todavía no tenés mensajes!',
      'en': 'You still have no messages!',
    },
    'kgiugcuc': {
      'es': 'Escribir...',
      'en': 'Write...',
    },
    'j24tzi0l': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I29Calendario
  {
    '1iba03c9': {
      'es': 'Calendario',
      'en': 'Calendar',
    },
    'lnrjyvtm': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I30acciones
  {
    'oavy4h8g': {
      'es': 'Calendario',
      'en': 'Calendar',
    },
    '3jtnse9k': {
      'es': 'INFLUENCERS',
      'en': 'INFLUENCERS',
    },
    'o8uh5tnt': {
      'es': '2 de septiembre',
      'en': 'September 2',
    },
    'h2sa26dw': {
      'es': '2021',
      'en': '2021',
    },
    'ocwvpj31': {
      'es': '10:00-13:00',
      'en': '10:00-13:00',
    },
    'jb5w6qqc': {
      'es': 'Acción instagram -  Fiesta',
      'en': 'Instagram Action - Party',
    },
    'us3wcc01': {
      'es': '3 historias , ropa fiesta',
      'en': '3 stories, party clothes',
    },
    'g9yizmu9': {
      'es': '14:00-15:00',
      'en': '14:00-15:00',
    },
    '71wxu0n9': {
      'es': 'Tik Tok - GRWM',
      'en': 'Tik Tok - GRWM',
    },
    'dhz4cnzv': {
      'es': 'Define the problem or question that....',
      'en': 'Define the problem or question that....',
    },
    'fxqdr8sn': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I40Notificaciones
  {
    '63wj9nlb': {
      'es': 'Notificaciones',
      'en': 'notifications',
    },
    'p18c2eg8': {
      'es': 'Borrar Historial',
      'en': 'Delete history',
    },
    'lpljnq8t': {
      'es': '¡Ahora sos Mega Influencer!',
      'en': 'Now you are a Mega Influencer!',
    },
    'espiv19h': {
      'es': 'Hoy 12:00',
      'en': 'Today 12:00',
    },
    '8wqwsuoq': {
      'es': '¡Este mes tuviste 30 contrataciones!',
      'en': 'This month you had 30 hires!',
    },
    'k9a5mx7g': {
      'es': 'Hoy 12:00',
      'en': 'Today 12:00',
    },
    '7hsorica': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I192sinnotificaciones
  {
    'owsqfd4j': {
      'es': 'Atención al Cliente',
      'en': 'Customer Support',
    },
    'n13vl4wd': {
      'es': 'No tenés notificaciones!',
      'en': 'You have no notifications!',
    },
    'mduy6g4f': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I33ajustesdeperfil
  {
    '64lf8cuz': {
      'es': 'CERRAR SESIÓN',
      'en': 'SIGN OFF',
    },
    'ee6chbyj': {
      'es': 'Ajustes',
      'en': 'Settings',
    },
    'iuxxdjs8': {
      'es': 'Claudia Fernandez',
      'en': 'Claudia Fernandez',
    },
    'ck74coxl': {
      'es': '@clau.fern\n\n',
      'en': '@clau.fern',
    },
    'xqbdnti2': {
      'es': 'Mi cuenta',
      'en': 'My account',
    },
    'bq7otfc8': {
      'es': 'Usuario, contraseña...',
      'en': 'User password...',
    },
    'yl7m6equ': {
      'es': 'Atencion al cliente',
      'en': 'Customer Support',
    },
    'j0pvckff': {
      'es': 'Responde tus preguntas...',
      'en': 'Answer your questions...',
    },
    'kc67mpfx': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I37ajustesdeperfil
  {
    '72x7xb3k': {
      'es': 'Ajustes',
      'en': 'Settings',
    },
    'snvtog7t': {
      'es': 'Claudia Fernandez',
      'en': 'Claudia Fernandez',
    },
    'md5mjyf3': {
      'es': '@clau.fern\n\n',
      'en': '@clau.fern',
    },
    'o5js6wsu': {
      'es': 'Mi cuenta',
      'en': 'My account',
    },
    'y7w8zqmk': {
      'es': 'Usuario, contraseña...',
      'en': 'User password...',
    },
    '4k8f3knh': {
      'es': 'Soporte Técnico',
      'en': 'Technical support',
    },
    '6ojnhlwn': {
      'es': 'Responde tus preguntas...',
      'en': 'Answer your questions...',
    },
    'ud9evqcj': {
      'es': 'Método de pago',
      'en': 'Payment method',
    },
    'utynvfdi': {
      'es': 'La mejor manera de recibir los....',
      'en': 'The best way to receive...',
    },
    'dgo2m3qb': {
      'es': 'CERRAR SESIÓN',
      'en': 'SIGN OFF',
    },
    'w4xhs6ag': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I34Ajustescuenta
  {
    'mfugnw33': {
      'es': 'Mi cuenta',
      'en': 'My account',
    },
    'p9wqnx4l': {
      'es': 'Privacidad, seguridad, cambiar email o número',
      'en': 'Privacy, security, change email or number',
    },
    '2acipo0p': {
      'es': 'Información personal',
      'en': 'Personal information',
    },
    '7bmqmmvk': {
      'es': 'Claudia Fernandez',
      'en': 'Claudia Fernandez',
    },
    'jh9g08wh': {
      'es': '10/09/2023',
      'en': '09/10/2023',
    },
    'rvr40pqu': {
      'es': '@Clau.fer',
      'en': '@Clau.fer',
    },
    'wm7mdsbc': {
      'es': 'Clu.fer@gmail.com',
      'en': 'clu.fer@gmail.com',
    },
    'wcrpkcuz': {
      'es': 'Ubicación',
      'en': 'Location',
    },
    '3xcl6u4f': {
      'es': 'Monseñor de Andrea 1892',
      'en': 'Monsignor of Andrea 1892',
    },
    '51m14lsp': {
      'es': 'Cambiar contraseña',
      'en': 'Change Password',
    },
    'hfykimr9': {
      'es': 'GUARDAR CAMBIOS',
      'en': 'SAVE CHANGES',
    },
    '9gasrcsn': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I186Atencionalcliente
  {
    '9tt2bnzj': {
      'es': 'Atención al Cliente',
      'en': 'Customer Support',
    },
    '8x4xt5xd': {
      'es': 'Martes, 15',
      'en': 'Tuesday, 15',
    },
    'xpydkzlz': {
      'es':
          'Ey! ¿Cómo podemos ayudarte?\nSi estás teniendo problemas\ncon la app mandá:',
      'en':
          'Hey! how can we help you?\nIf you\'re having trouble\nwith the app send:',
    },
    'nvg8pe19': {
      'es': '. ',
      'en': '.',
    },
    'drcpe03h': {
      'es': '1. Tengo un problema\ncon la oferta.',
      'en': '1. I have a problem\nwith the offer.',
    },
    'nuffcnl8': {
      'es': '8.30pm',
      'en': '8.30pm',
    },
    'doco6tz4': {
      'es':
          'Hola! ¿Qué tal? Sí,\ngracias! 1. tengo un\nproblema con la\noferta.',
      'en':
          'Hello! How are you? Yeah,\nthank you! 1. I have a\nproblem with\noffer.',
    },
    '38443p9z': {
      'es': '8.33pm',
      'en': '8.33pm',
    },
    '342ipqht': {
      'es': 'Escribir...',
      'en': 'Write...',
    },
    'l778mypg': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I38Metododepago
  {
    '2zzm77l8': {
      'es': 'Método de pago',
      'en': 'Payment method',
    },
    'rv2qoimg': {
      'es': 'Sincronizar',
      'en': 'Sync up',
    },
    '2vnwefh3': {
      'es': 'Sincronizar',
      'en': 'Sync up',
    },
    'ikb53bke': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I190splash
  {
    'y6fyk3mk': {
      'es': 'LOGO',
      'en': 'LOGO',
    },
    'pzlaloch': {
      'es': 'LIT',
      'en': 'APP NAME',
    },
    '90nxe6uz': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I50selector
  {
    'p0bbct9i': {
      'es': 'LOGO',
      'en': 'LOGO',
    },
    'duv4r07f': {
      'es': 'INFLUENCER',
      'en': 'INFLUENCERS',
    },
    'x0nf9gfg': {
      'es': 'COMERCIO',
      'en': 'TRADE',
    },
    '6rzwc5rq': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I7
  {
    'wlzmruvm': {
      'es': 'INFLUENCERS',
      'en': 'to register',
    },
    'yqjzp08e': {
      'es': 'IMG / ILLU',
      'en': '',
    },
    'mh1eqgje': {
      'es': 'Creá ofertas',
      'en': '',
    },
    'd1x7dy1p': {
      'es': 'Hacé que tu negocio despegue con nuestros influencers\n',
      'en': '',
    },
    'oiidp0s1': {
      'es': 'IMG / ILLU',
      'en': '',
    },
    'vbs7b0cw': {
      'es': 'Encontrá al influencer indicado ',
      'en': '',
    },
    'syvrkqm7': {
      'es': 'Conectá directamente con todo el talento de nuestra comunidad ',
      'en': '',
    },
    '7u085ox8': {
      'es': 'IMG / ILLU',
      'en': '',
    },
    'pdrfijfa': {
      'es': 'Potenciá tu negocio',
      'en': '',
    },
    'waru4gg0': {
      'es': 'Video Tutorial',
      'en': '',
    },
    '4otlrqq9': {
      'es': 'EMPEZAR',
      'en': 'CONTINUE',
    },
    'vke7uhou': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I0Inicirsesion
  {
    'bp8nzocv': {
      'es': 'NOMBRE DE LA APP',
      'en': 'APP NAME',
    },
    'pbi3j4i4': {
      'es': 'LOGO',
      'en': 'LOGO',
    },
    'qhjb2xh1': {
      'es': 'INICIAR SESION',
      'en': '',
    },
    '9acrhe2g': {
      'es': 'REGISTRARSE',
      'en': '',
    },
    'i1e4irdz': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I10RegistroComercio
  {
    'wqaasxlg': {
      'es': '1',
      'en': '1',
    },
    'rf1zsq0b': {
      'es': '2',
      'en': '2',
    },
    '3j8xmrtt': {
      'es': '3',
      'en': '3',
    },
    '05fanddr': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'shcwuo4c': {
      'es': 'Registrar',
      'en': 'Log in',
    },
    'c3yzosbg': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'nzhjb23e': {
      'es': 'Confirmar E-mail',
      'en': 'confirm email',
    },
    'yyjbsl8o': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'aiv0fzcb': {
      'es': 'Confirmar Contraseña',
      'en': 'Confirm Password',
    },
    'lbi3xkj2': {
      'es': 'Acepto los términos y condiciones',
      'en': 'I accept the terms and conditions',
    },
    'jjcsd2bt': {
      'es': '¿Ya tenés cuenta?',
      'en': 'Do you already have an account?',
    },
    'yr8no3ik': {
      'es': 'Ingresá acá',
      'en': 'enter here',
    },
    '0kpyb5wj': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'z62svs16': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I11Comercios
  {
    'ovihov6y': {
      'es': '1',
      'en': '1',
    },
    '82bmf0hm': {
      'es': '2',
      'en': '2',
    },
    'hcz6eb80': {
      'es': '3',
      'en': '3',
    },
    'rg4j6x4g': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'atksotgy': {
      'es': 'Registrar',
      'en': 'Log in',
    },
    'wcphyit5': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'o3ihsjq4': {
      'es': 'Confirmar E-mail',
      'en': 'confirm email',
    },
    'crwzzre4': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'pb42jjom': {
      'es': 'Confirmar Contraseña',
      'en': 'Confirm Password',
    },
    'it4nz4le': {
      'es': 'Acepto los términos y condiciones',
      'en': 'I accept the terms and conditions',
    },
    'mzsx4qqs': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum....Lorem ipsum dolor sit amet consectetur ',
      'en':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum....Lorem ipsum dolor sit amet consectetur',
    },
    'z89yv8ak': {
      'es': '¿Ya tenés cuenta?',
      'en': 'Do you already have an account?',
    },
    '7vy5r5z7': {
      'es': 'Ingresá acá',
      'en': 'enter here',
    },
    'kqyn5qar': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'iyc2m8n9': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // errorregistro
  {
    '4xs5ag8e': {
      'es': '1',
      'en': '1',
    },
    '32mihb49': {
      'es': '2',
      'en': '2',
    },
    '786bcyth': {
      'es': '3',
      'en': '3',
    },
    '4l3c570q': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    '4dunajnj': {
      'es': 'Registrar',
      'en': 'Log in',
    },
    'gh49n5fw': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'q8sfgrdq': {
      'es': 'Confirmar E-mail',
      'en': 'confirm email',
    },
    'losfdnsf': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'usbk6q98': {
      'es': 'Confirmar Contraseña',
      'en': 'Confirm Password',
    },
    'g2yrzeye': {
      'es': 'Acepto los términos y condiciones',
      'en': 'I accept the terms and conditions',
    },
    'nml0w574': {
      'es': '¿Ya tenés cuenta?',
      'en': 'Do you already have an account?',
    },
    'fz8njzh4': {
      'es': 'Ingresá acá',
      'en': 'enter here',
    },
    'rfr3l70z': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'vp7g62qv': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I12Registrarcomercio2
  {
    '4an6um2f': {
      'es': '1',
      'en': '1',
    },
    'a1rx3ldz': {
      'es': '2',
      'en': '2',
    },
    '5a94gpds': {
      'es': '3',
      'en': '3',
    },
    'fp6qnrfk': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'xi2gnrlg': {
      'es': 'Registrar',
      'en': 'to register',
    },
    'j6x6osr0': {
      'es': 'Nombre del comercio',
      'en': 'Name',
    },
    'mfgksfev': {
      'es': 'Nombre y apellido del encargado',
      'en': 'Last name',
    },
    'i055cyxr': {
      'es': 'Categoria',
      'en': 'Profession',
    },
    'ttva26fg': {
      'es': 'Codigo Promocional (opcional)',
      'en': 'Profession',
    },
    '9gc8jwwg': {
      'es': 'Ubicacion',
      'en': '',
    },
    '7hxnsh1r': {
      'es': 'Descripción del comercio',
      'en': '',
    },
    '8ltnpvhq': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    '529wkzzv': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I16redes
  {
    'opkjnuic': {
      'es': '1',
      'en': '1',
    },
    '6vh4ncqy': {
      'es': '2',
      'en': '2',
    },
    'lf2m13h3': {
      'es': '3',
      'en': '3',
    },
    '3yh53c1n': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'pcucad01': {
      'es': 'Registrar',
      'en': 'Link to your networks',
    },
    'pjcsosab': {
      'es': 'Instagram',
      'en': 'instagram',
    },
    'z5mzwie6': {
      'es': 'Tik Tok',
      'en': 'Tik Tok',
    },
    'y7nasez7': {
      'es': 'Facebook',
      'en': 'Youtube',
    },
    's29zvp6x': {
      'es': 'Website',
      'en': 'twitch',
    },
    '30gq87u4': {
      'es': 'Imágenes de tu comercio',
      'en': 'portfolio',
    },
    'yzhoj8e5': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'osnmehml': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // op1
  {
    'gaa5uivs': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    '1oqm9s4o': {
      'es': 'Membresías',
      'en': '',
    },
    'og8wzcyu': {
      'es': 'Oro',
      'en': '',
    },
    'b94wd4sz': {
      'es': '\$50',
      'en': '',
    },
    'fx0gmmy0': {
      'es': '/mes',
      'en': '',
    },
    'uu8c25na': {
      'es': '30 influencers',
      'en': '',
    },
    'lh830xy1': {
      'es': 'Beneficios',
      'en': '',
    },
    'ypjv4ksv': {
      'es': 'Beneficios',
      'en': '',
    },
    'y5dhf1vn': {
      'es': 'CONTINUAR',
      'en': '',
    },
    '6rv95bd0': {
      'es': 'Oro',
      'en': '',
    },
    '2x4ixvhw': {
      'es': '\$50',
      'en': '',
    },
    'gc7k4w5v': {
      'es': '30 influencers',
      'en': '',
    },
    'wdkxg72e': {
      'es':
          'Beneficios Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    'i2yrebz3': {
      'es': 'Oro',
      'en': '',
    },
    'e53wisnd': {
      'es': '\$50',
      'en': '',
    },
    '9pk8fhgh': {
      'es': '30 influencers',
      'en': '',
    },
    '6t9j43r8': {
      'es':
          'Beneficios Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    'y0ybyfmr': {
      'es': 'Platinum',
      'en': '',
    },
    '84gmjf7a': {
      'es': '\$100',
      'en': '',
    },
    'dvwh1sx6': {
      'es': '/mes',
      'en': '',
    },
    'v1jdpqc1': {
      'es': '100 influencers',
      'en': '',
    },
    'znzxb7hn': {
      'es': 'Beneficios',
      'en': '',
    },
    'tuyzusj3': {
      'es': 'Beneficios',
      'en': '',
    },
    'zlucu038': {
      'es': 'CONTINUAR',
      'en': '',
    },
    'jawgrdoz': {
      'es': 'Platinum',
      'en': '',
    },
    'felq3gmb': {
      'es': '\$100',
      'en': '',
    },
    'bhdnp1fr': {
      'es': '100 influencers',
      'en': '',
    },
    '013teemb': {
      'es':
          'Beneficios Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    'eou9drnq': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I18Membresias
  {
    'c7ff047p': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'izp626fn': {
      'es': 'Membresías',
      'en': '',
    },
    'ddct1cud': {
      'es': 'Oro',
      'en': '',
    },
    'nj12rdtb': {
      'es': '50 \$',
      'en': '',
    },
    'kr8grcav': {
      'es': '30 Influencers',
      'en': '',
    },
    'uobegcxk': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    'o8akdfnm': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'ntn892il': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I156Bienvenido
  {
    '8ogoha6w': {
      'es': 'Iniciar Sesión',
      'en': 'Log in',
    },
    'g1vfslkh': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'bhat1bvd': {
      'es': 'Olvidé mi mail',
      'en': 'I forgot my email',
    },
    'oaynr50t': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'utxn07nd': {
      'es': 'Olvide mi contraseña',
      'en': 'I forgot my password',
    },
    'jflqywpb': {
      'es': 'INICIAR SESION',
      'en': 'LOG IN',
    },
    'ckbv9pvw': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I21Iniciarsesion
  {
    't88melon': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'zs9u8j3c': {
      'es': 'Iniciar Sesión',
      'en': 'Log in',
    },
    'jsbl64m3': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'd2aem5lc': {
      'es': 'Olvidé mi mail',
      'en': 'I forgot my email',
    },
    'jezr60ki': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'rfzstie9': {
      'es': 'Olvide mi contraseña',
      'en': 'I forgot my password',
    },
    'jli1zjmc': {
      'es': 'INICIAR SESION',
      'en': 'LOG IN',
    },
    '0afavz1d': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I23cambiarpass
  {
    'rcht8262': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'a7v44pzj': {
      'es': 'Cambiar Contraseña',
      'en': 'Change Password',
    },
    'ecmpuhhv': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'll5yb30v': {
      'es': 'ENVIAR CÓDIGO',
      'en': 'SEND CODE',
    },
    'swairmkr': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I150verificarcodigo
  {
    'qpbg6ydw': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'ecivmzyv': {
      'es': 'Cambiar Contraseña',
      'en': 'Change Password',
    },
    'ql92nfz2': {
      'es': 'REENVIAR CÓDIGO',
      'en': 'RESEND CODE',
    },
    'b9ii6p9w': {
      'es': '¿No te llegó el mail? Contactarme \ncon ',
      'en': 'Didn\'t you get the email? contact me\nwith',
    },
    'm95vaxcw': {
      'es': 'soporte técnico',
      'en': 'technical support',
    },
    'ljg4tsa4': {
      'es': 'ENVIAR CÓDIGO',
      'en': 'SEND CODE',
    },
    'gyb20up5': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I30nuevapass
  {
    't5xzw8cb': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'reqvmhkp': {
      'es': 'Nueva Contraseña',
      'en': 'New Password',
    },
    'lrb6tl60': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'kr3upoa8': {
      'es': 'Nueva Contraseña',
      'en': 'New Password',
    },
    '27o4fqsv': {
      'es': 'CONFIRMAR',
      'en': 'CONFIRM',
    },
    'cpis4sle': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I155iniciarsesion
  {
    'mjz4x4en': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    '8ikdls51': {
      'es': 'Iniciar Sesión',
      'en': 'Log in',
    },
    'ddb2o6z5': {
      'es': 'E-mail',
      'en': 'E-mail',
    },
    'fr0aou2t': {
      'es': 'Olvidé mi mail',
      'en': 'I forgot my email',
    },
    'j6kk7sds': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'f2zm2kt4': {
      'es': 'Olvide mi contraseña',
      'en': 'I forgot my password',
    },
    '42p643ep': {
      'es': 'INICIAR SESION',
      'en': 'LOG IN',
    },
    'eqqubuth': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I191Bienvenido
  {
    'nf5igd7c': {
      'es': 'LOGO',
      'en': '',
    },
    '7e256607': {
      'es': '¡Bienvenido!',
      'en': '',
    },
    '4yfcikki': {
      'es': 'Home',
      'en': '',
    },
  },
  // op5
  {
    'gfdf2dzp': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    '1mddz84d': {
      'es': 'Membresías',
      'en': '',
    },
    '5enz79l1': {
      'es': 'Oro',
      'en': '',
    },
    '7ehjoxyp': {
      'es': '\$50',
      'en': '',
    },
    'gcn1ua96': {
      'es': '/mes',
      'en': '',
    },
    'iyoutgzk': {
      'es': '30 influencers',
      'en': '',
    },
    'x43qc8jo': {
      'es': 'Beneficios',
      'en': '',
    },
    'i8bkp1s2': {
      'es': 'Beneficios',
      'en': '',
    },
    'gtw8fvn4': {
      'es': 'CONTINUAR',
      'en': '',
    },
    'dqwxuybg': {
      'es': 'Platinum',
      'en': '',
    },
    'ato3sghj': {
      'es': '\$100',
      'en': '',
    },
    '7eh91d9q': {
      'es': '/mes',
      'en': '',
    },
    'tkd7557w': {
      'es': '100 influencers',
      'en': '',
    },
    'myet17fq': {
      'es': 'Beneficios',
      'en': '',
    },
    '1c718orp': {
      'es': 'Beneficios',
      'en': '',
    },
    '6qxr0xd6': {
      'es': 'CONTINUAR',
      'en': '',
    },
    '1mlj11gt': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I172oro
  {
    'gsk89h3k': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'd2na4k4w': {
      'es': 'Membresías',
      'en': '',
    },
    'pdg5ejxn': {
      'es': 'Método de pago',
      'en': '',
    },
    'cpf5fipj': {
      'es': 'Mensual 5% off',
      'en': '',
    },
    '9lvindz1': {
      'es': 'Trimestral 20% off',
      'en': '',
    },
    'mxcv1d89': {
      'es': 'Anual 50% off',
      'en': '',
    },
    'aofupgkd': {
      'es': 'Pago',
      'en': '',
    },
    'efpu2cg1': {
      'es': 'latinoamerica',
      'en': '',
    },
    '4bd6laas': {
      'es': 'Global',
      'en': '',
    },
    '97yyrex0': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
    'vvcdqpbb': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I187bienvenido
  {
    'zhozyark': {
      'es': 'LOGO',
      'en': '',
    },
    'bfytz9ge': {
      'es': '¡Bienvenido!',
      'en': '',
    },
    '8b19f0b1': {
      'es': 'Subí una nueva oferta',
      'en': '',
    },
    'rgjfoj7z': {
      'es': 'Comercio',
      'en': 'Influencers',
    },
    'dusatjox': {
      'es': 'Home',
      'en': '',
    },
  },
  // I107crearnuevaoferta
  {
    'qd817vwe': {
      'es': 'Crear una nueva oferta',
      'en': 'INFLUENCERS',
    },
    'nakgys59': {
      'es': 'Descripción del beneficio',
      'en': '',
    },
    '5xvlom3g': {
      'es': 'CREAR',
      'en': 'SEND CODE',
    },
    'jyifx2g6': {
      'es': 'Home',
      'en': '',
    },
  },
  // I77
  {
    'dep7v5mr': {
      'es': 'Crear una nueva oferta',
      'en': 'INFLUENCERS',
    },
    '66gh667i': {
      'es': 'Fecha/Hora',
      'en': '',
    },
    'lwu998u6': {
      'es': 'Cantidad de influencer ',
      'en': '',
    },
    'zdfrybg2': {
      'es': 'Ubicacion',
      'en': '',
    },
    'tmol1lv0': {
      'es': 'Descripción del trabajo',
      'en': '',
    },
    'arpxgxg9': {
      'es': 'Cargar imágenes (opcional)',
      'en': '',
    },
    '64ldl9x5': {
      'es': 'CONTINUAR',
      'en': 'SEND CODE',
    },
    'h1mrkidl': {
      'es': 'Home',
      'en': '',
    },
  },
  // I196Foto
  {
    '2lvbkoz1': {
      'es': 'Kristin Watson, 24',
      'en': '',
    },
    'ew2eefud': {
      'es': 'Modelo',
      'en': '',
    },
    'culxz6vn': {
      'es': 'Juan Carlo, 61',
      'en': '',
    },
    'nv4u8fwj': {
      'es': 'Modelo',
      'en': '',
    },
    'lcwpb0v7': {
      'es': 'Kristin Watson, 24',
      'en': '',
    },
    'x3mf0wp4': {
      'es': 'Modelo',
      'en': '',
    },
    '5in9xmfy': {
      'es': 'Home',
      'en': '',
    },
  },
  // I170
  {
    'ax88o0r0': {
      'es': 'SOLICITAR',
      'en': '',
    },
    'vwxe8mid': {
      'es': 'Kristin Watson',
      'en': 'Drinks + entrance',
    },
    '5bd2uu8n': {
      'es': 'Mega influencer',
      'en': 'It happens between 18:00 - 19:30pm',
    },
    'tvy7mj7z': {
      'es': '2km',
      'en': '2km',
    },
    'vnuq0zk0': {
      'es': 'COMIDA',
      'en': 'NEGRONI',
    },
    'qqk5cnon': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.',
      'en':
          'Enjoy a serving of bread or salad\ncourtesy + a Provoleta Negroni or some\nRock Prawns or some Papas Bravas + 2\ndrinks of choice',
    },
    'qg089w61': {
      'es': 'Lorem ipsum dolor sit amet consectetur!\n',
      'en': 'Leave us your review on Google!',
    },
    'ixqp5hwz': {
      'es': 'Abonos',
      'en': '',
    },
    'qc44tcnf': {
      'es': 'Tik Tok  ',
      'en': '',
    },
    'wekca495': {
      'es': '10.000 \$',
      'en': '',
    },
    'j4nc92sf': {
      'es': 'Twitch',
      'en': '',
    },
    'dgp2wghw': {
      'es': '20.000 \$',
      'en': '',
    },
    'n5wzznyi': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // op3
  {
    '0snk5ka1': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    '7znsqee6': {
      'es': 'Membresías',
      'en': '',
    },
    '7nhu1vtx': {
      'es': 'Platinum',
      'en': '',
    },
    'kxnkj6dl': {
      'es': '\$100',
      'en': '',
    },
    '4tu1fnqc': {
      'es': '/mes',
      'en': '',
    },
    'avhjbkan': {
      'es': '100 influencers',
      'en': '',
    },
    'y0xmikke': {
      'es': 'CONTINUAR',
      'en': '',
    },
    'bp0utk7n': {
      'es': 'Oro',
      'en': '',
    },
    'xjzdgoen': {
      'es': '\$25',
      'en': '',
    },
    '76srzi9e': {
      'es': '/mes',
      'en': '',
    },
    'h6jw49qs': {
      'es': '50 influencers',
      'en': '',
    },
    'adaj72zx': {
      'es': 'CONTINUAR',
      'en': '',
    },
    'a5ush6zy': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I166
  {
    'yquba9xh': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'l7bs7wtu': {
      'es': 'Membresías',
      'en': '',
    },
    'l51ru6go': {
      'es': 'Platinum',
      'en': '',
    },
    'cv58q9az': {
      'es': '100 \$',
      'en': '',
    },
    'rpx7cji1': {
      'es': '100 Influencers',
      'en': '',
    },
    '1p8v510b': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    'xqf7s2d6': {
      'es': 'UPGRADE',
      'en': 'CONTINUE',
    },
    'edarxtu7': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I197
  {
    '4o0xs69z': {
      'es': 'Buscar...',
      'en': '',
    },
    's43jxig4': {
      'es': 'Mega Influencers',
      'en': '',
    },
    'vv7mt10o': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    'wnckbbxo': {
      'es': 'Nano influencer',
      'en': '',
    },
    'tzmvk4ed': {
      'es': 'Kristin Watson',
      'en': '',
    },
    'o40n0ymf': {
      'es': '2km',
      'en': '',
    },
    'qumzglce': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    '1enmdrqp': {
      'es': 'Nano influencer',
      'en': '',
    },
    't8vvt0qa': {
      'es': 'CHAYANE AZUL',
      'en': '',
    },
    '7eszbtxw': {
      'es': '2km',
      'en': '',
    },
    '2ksus7hq': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    'm0nm6jii': {
      'es': 'Nano influencer',
      'en': '',
    },
    'rdxvo9xl': {
      'es': 'ROMINA GROL',
      'en': '',
    },
    'c444n7v4': {
      'es': '2km',
      'en': '',
    },
    '86v4zhvl': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    'awp0hptq': {
      'es': 'Nano influencer',
      'en': '',
    },
    'j97r4tfe': {
      'es': 'Kristin Watson',
      'en': '',
    },
    '9id0xw7y': {
      'es': '2km',
      'en': '',
    },
    'bghhf1um': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    '0sfby590': {
      'es': 'Nano influencer',
      'en': '',
    },
    'xmdz2hx8': {
      'es': 'CHAYANE AZUL',
      'en': '',
    },
    'pix2lhie': {
      'es': '2km',
      'en': '',
    },
    'y0c3l9bp': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    'llah3p2u': {
      'es': 'Nano influencer',
      'en': '',
    },
    '5dcmrps4': {
      'es': 'ROMINA GROL',
      'en': '',
    },
    'uavigo03': {
      'es': '2km',
      'en': '',
    },
    'pvmble3e': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    'c3u5if3o': {
      'es': 'Nano influencer',
      'en': '',
    },
    'qg8kyiw7': {
      'es': 'Kristin Watson',
      'en': '',
    },
    '796unsfh': {
      'es': '2km',
      'en': '',
    },
    'z71pscqg': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    'ufcwm0mb': {
      'es': 'Nano influencer',
      'en': '',
    },
    'citz7l4r': {
      'es': 'CHAYANE AZUL',
      'en': '',
    },
    '9cle7e38': {
      'es': '2km',
      'en': '',
    },
    'qckjubce': {
      'es': 'Abs +  Gluteos',
      'en': '',
    },
    'ugrz3sh5': {
      'es': 'Nano influencer',
      'en': '',
    },
    'oshu6eho': {
      'es': 'ROMINA GROL',
      'en': '',
    },
    'dtxqr1g3': {
      'es': '2km',
      'en': '',
    },
    'tqjediu4': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I112inicio
  {
    '9rw5pmsp': {
      'es': 'Comida',
      'en': 'Meal',
    },
    'rd6t081k': {
      'es': '2Km',
      'en': '2Km',
    },
    'sg402o6a': {
      'es': 'Fitness',
      'en': 'Meal',
    },
    'm5mu7mt9': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    'h7ubh0dr': {
      'es': 'De 18:00 - 19:30pm',
      'en': 'From 18:00 - 19:30pm',
    },
    'ul98jrum': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    'hyp06fc6': {
      'es': '2Km',
      'en': '2Km',
    },
    'ez5liq5h': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    'vkzmq69f': {
      'es': 'De 18:00 - 19:30pm',
      'en': 'From 18:00 - 19:30pm',
    },
    '2q9znveq': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    'juhvdeuz': {
      'es': '2Km',
      'en': '2Km',
    },
    '5q5rmolx': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    'pyqfsim7': {
      'es': 'De 18:00 - 19:30pm',
      'en': 'From 18:00 - 19:30pm',
    },
    '8hdumdnd': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    'kr56uf7n': {
      'es': '2Km',
      'en': '2Km',
    },
    'ws0i6y78': {
      'es': 'Buenos Aires',
      'en': 'Influencers',
    },
    'a76mp70h': {
      'es': 'PUBLICAR UNA NUEVA OFERTA',
      'en': '',
    },
    'zuyz6jbi': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I25misofertas
  {
    'p4axl1cv': {
      'es': 'ACEPTAR',
      'en': 'ACCEPT',
    },
    'zr4waxox': {
      'es': 'Drinks + entrada',
      'en': 'Drinks + entrance',
    },
    'o0gr7cxw': {
      'es': 'Pasá entre las 18:00 - 19:30pm',
      'en': 'It happens between 18:00 - 19:30pm',
    },
    'unnhavqz': {
      'es': '2km',
      'en': '2km',
    },
    'u2lj4wdv': {
      'es': 'NEGRONI',
      'en': 'NEGRONI',
    },
    '1mj9w8n7': {
      'es': 'Av. Santa Fe 19888',
      'en': 'Av. Santa Fe 19888',
    },
    's7bs8187': {
      'es': 'Código - AD1234 ',
      'en': 'Code - AD1234',
    },
    '1kos67zz': {
      'es':
          'Disfrutá una porción de pan o ensalada de \ncortesía + una Provoleta Negroni o unos\nLangostinos de Roca o unas Papas Bravas + 2 \ntragos a elección.',
      'en':
          'Enjoy a serving of bread or salad\ncourtesy + a Provoleta Negroni or some\nRock Prawns or some Papas Bravas + 2\ndrinks of choice',
    },
    'z03yofmp': {
      'es': 'Dejanos tu reseña en Google!\n',
      'en': 'Leave us your review on Google!',
    },
    '568ssvys': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I116ofertasrealizadas
  {
    '1umxfq18': {
      'es': 'Clase de abdominales',
      'en': 'Drinks + entrance',
    },
    '4lsxlvr9': {
      'es': 'Pasá entre 16:00 - 17:30pm',
      'en': 'It happens between 18:00 - 19:30pm',
    },
    'oigodd6d': {
      'es': '2km',
      'en': '2km',
    },
    'cr45folr': {
      'es': 'SPORT CLUB',
      'en': 'NEGRONI',
    },
    'is22bqd6': {
      'es': 'Av. Santa Fe 19888',
      'en': 'Av. Santa Fe 19888',
    },
    'c1ihfh5r': {
      'es': 'Brand Partnership',
      'en': '',
    },
    'ajvhlbrl': {
      'es': 'Realizada',
      'en': '',
    },
    'msj5nufv': {
      'es': 'Código - AD1234 ',
      'en': 'Code - AD1234',
    },
    'xs006v9s': {
      'es':
          'Vení a entrenar. Sumate a una de nuestras clases de gimnasia localizada de 45 minutos. Te esperamos!',
      'en':
          'Enjoy a serving of bread or salad\ncourtesy + a Provoleta Negroni or some\nRock Prawns or some Papas Bravas + 2\ndrinks of choice',
    },
    'qzty54yw': {
      'es': 'Dejanos tu reseña en Google!\n',
      'en': 'Leave us your review on Google!',
    },
    'awo3bcdz': {
      'es': 'Influencers que formaron parte',
      'en': '',
    },
    'rowjgor9': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I184
  {
    '4zhwlsjw': {
      'es': 'Clase de abdominales',
      'en': 'Drinks + entrance',
    },
    '6mdvz05b': {
      'es': 'Pasá entre 16:00 - 17:30pm',
      'en': 'It happens between 18:00 - 19:30pm',
    },
    '2t3cwg6l': {
      'es': '2km',
      'en': '2km',
    },
    'crcr5wwx': {
      'es': 'SPORT CLUB',
      'en': 'NEGRONI',
    },
    'lgitb9r4': {
      'es': 'Av. Santa Fe 19888',
      'en': 'Av. Santa Fe 19888',
    },
    'xweglqgs': {
      'es': 'Brand Partnership',
      'en': '',
    },
    'y0gko3a1': {
      'es': 'Realizada',
      'en': '',
    },
    'pxcauqu4': {
      'es': 'Código - AD1234 ',
      'en': 'Code - AD1234',
    },
    'xqfzmro2': {
      'es':
          'Vení a entrenar. Sumate a una de nuestras clases de gimnasia localizada de 45 minutos. Te esperamos!',
      'en':
          'Enjoy a serving of bread or salad\ncourtesy + a Provoleta Negroni or some\nRock Prawns or some Papas Bravas + 2\ndrinks of choice',
    },
    'q2bgusls': {
      'es': 'Dejanos tu reseña en Google!\n',
      'en': 'Leave us your review on Google!',
    },
    '28yx18y3': {
      'es': 'Influencers que formaron parte',
      'en': '',
    },
    'ld8fv6et': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // op4
  {
    'r1kbe8r4': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'b4r0gr0a': {
      'es': 'Membresías',
      'en': '',
    },
    '8urypai0': {
      'es': 'Oro',
      'en': '',
    },
    '75104qhb': {
      'es': '\$50',
      'en': '',
    },
    'guxppu4m': {
      'es': '/mes',
      'en': '',
    },
    '7s8jradn': {
      'es': '30 influencers',
      'en': '',
    },
    'ifnfifek': {
      'es': 'CONTINUAR',
      'en': '',
    },
    'fmv7t06h': {
      'es': 'Platinum',
      'en': '',
    },
    'b112mq99': {
      'es': '\$100',
      'en': '',
    },
    'pnev6hjm': {
      'es': '/mes',
      'en': '',
    },
    '86w2rhdd': {
      'es': '100 influencers',
      'en': '',
    },
    'wk4grx5t': {
      'es': 'CONTINUAR',
      'en': '',
    },
    'dmjinggm': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I194Oro
  {
    'hkmb3mf3': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'lq6qnr9w': {
      'es': 'Membresías',
      'en': '',
    },
    'xsxh1dae': {
      'es': 'Oro',
      'en': '',
    },
    'f9z5h1uo': {
      'es': '50 \$',
      'en': '',
    },
    '6utdmu7h': {
      'es': '30 Influencers',
      'en': '',
    },
    '075jj52n': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    'goj4v46c': {
      'es': 'Método de pago',
      'en': '',
    },
    'qilrov6f': {
      'es': 'Pago',
      'en': '',
    },
    '7l0vw7hq': {
      'es': 'Sincronizar',
      'en': '',
    },
    'y4pv5d8k': {
      'es': 'Sincronizar',
      'en': '',
    },
    'rdhq7weg': {
      'es': 'UPGRADE',
      'en': 'CONTINUE',
    },
    '2wfnq14q': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I193oroupgrade
  {
    'lpyxyjs0': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    '7pxvjojq': {
      'es': 'Membresías',
      'en': '',
    },
    '4ac9tm6x': {
      'es': 'Oro',
      'en': '',
    },
    'a0dew4sm': {
      'es': '50 \$',
      'en': '',
    },
    '7lvo1pv9': {
      'es': '30 Influencers',
      'en': '',
    },
    'ldfxw1au': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    'k6szmh6j': {
      'es': 'UPGRADE',
      'en': 'CONTINUE',
    },
    'mcq57ib8': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I168
  {
    '0hc8zrdk': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
    'wdh39kjm': {
      'es': 'Membresías',
      'en': '',
    },
    '1xun8dam': {
      'es': 'Platinum',
      'en': '',
    },
    'kpu6y5io': {
      'es': '100 \$',
      'en': '',
    },
    '5fg82ytf': {
      'es': '30 Influencers',
      'en': '',
    },
    'gia4ione': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus..',
      'en': '',
    },
    '6fb6gd2w': {
      'es': 'Método de pago',
      'en': '',
    },
    'mxrszkrw': {
      'es': 'Pago',
      'en': '',
    },
    'qpmaz43t': {
      'es': 'Sincronizar',
      'en': '',
    },
    '9zklrnbq': {
      'es': 'Sincronizar',
      'en': '',
    },
    'r7abscu8': {
      'es': 'UPGRADE',
      'en': 'CONTINUE',
    },
    'itici4zb': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I28Chat
  {
    'ozsu6lgf': {
      'es': 'Atención al Cliente',
      'en': 'Customer Support',
    },
    'dunyu2tt': {
      'es': 'Martes, 15',
      'en': 'Tuesday, 15',
    },
    'qitzg82h': {
      'es':
          'Ey! ¿Cómo podemos ayudarte?\nSi estás teniendo problemas\ncon la app mandá:',
      'en':
          'Hey! how can we help you?\nIf you\'re having trouble\nwith the app send:',
    },
    'wpz9mi2s': {
      'es': '. ',
      'en': '.',
    },
    'np79e2s9': {
      'es': '1. Tengo un problema\ncon la oferta.',
      'en': '1. I have a problem\nwith the offer.',
    },
    'jrqbgkfz': {
      'es': '8.30pm',
      'en': '8.30pm',
    },
    '5ox9cdkd': {
      'es':
          'Hola! ¿Qué tal? Sí,\ngracias! 1. tengo un\nproblema con la\noferta.',
      'en':
          'Hello! How are you? Yeah,\nthank you! 1. I have a\nproblem with\noffer.',
    },
    'q396vcc4': {
      'es': '8.33pm',
      'en': '8.33pm',
    },
    '1hrgtg0f': {
      'es': 'Escribir...',
      'en': 'Write...',
    },
    '6yspv4cw': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I201chatvacio
  {
    'ewhwe5b8': {
      'es': 'Escribir...',
      'en': 'Write...',
    },
    '4b5fqi3p': {
      'es': 'Atención al Cliente',
      'en': 'Customer Support',
    },
    'o9vrz7jx': {
      'es': 'Martes, 15',
      'en': 'Tuesday, 15',
    },
    'chwc414q': {
      'es': 'Todavía no tenés mensajes!',
      'en': 'You still have no messages!',
    },
    'vpb6xumk': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I136Acciones
  {
    'e6hlsxyn': {
      'es': 'Calendario',
      'en': 'Calendar',
    },
    '73dc0m01': {
      'es': 'Acciones del mes',
      'en': 'INFLUENCERS',
    },
    'hrbixviz': {
      'es': '2 de septiembre',
      'en': 'September 2',
    },
    't7bvuj1w': {
      'es': '2021',
      'en': '2021',
    },
    'c51x86cg': {
      'es': '10:00-13:00',
      'en': '10:00-13:00',
    },
    '4fdobcak': {
      'es': 'Acción instagram -  Fiesta',
      'en': 'Instagram Action - Party',
    },
    '2gpl7ffk': {
      'es': '3 historias , ropa fiesta',
      'en': '3 stories, party clothes',
    },
    'rf2f6skf': {
      'es': '14:00-15:00',
      'en': '14:00-15:00',
    },
    'q3d5cnxw': {
      'es': 'Tik Tok - GRWM',
      'en': 'Tik Tok - GRWM',
    },
    'es2fkkr6': {
      'es': 'Define the problem or question that....',
      'en': 'Define the problem or question that....',
    },
    'n7g1qo59': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I40notificacionescomercio
  {
    'kwn8ey8t': {
      'es': 'Notificaciones',
      'en': 'notifications',
    },
    '8jdb3lck': {
      'es': 'Borrar Historial',
      'en': 'Delete history',
    },
    'bfhfnusi': {
      'es': '¡Ahora sos Mega Influencer!',
      'en': 'Now you are a Mega Influencer!',
    },
    'j9l5j0x5': {
      'es': 'Hoy 12:00',
      'en': 'Today 12:00',
    },
    'rqejleqc': {
      'es': '¡Este mes tuviste 30 contrataciones!',
      'en': 'This month you had 30 hires!',
    },
    'c7v7z0m3': {
      'es': 'Hoy 12:00',
      'en': 'Today 12:00',
    },
    'gxrs59ol': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I203sinnotificaciones
  {
    'j3r0o0zn': {
      'es': 'Notificaciones',
      'en': 'notifications',
    },
    'jl9n5d94': {
      'es': 'No tenés notificaciones!',
      'en': 'You have no notifications!',
    },
    'dzjfmbn6': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I140ajustes
  {
    '9t91mipw': {
      'es': 'CERRAR SESIÓN',
      'en': 'SIGN OFF',
    },
    'hlootydp': {
      'es': 'Ajustes',
      'en': 'Settings',
    },
    'tusbbz93': {
      'es': 'Negroni',
      'en': 'Claudia Fernandez',
    },
    '4shzrk0d': {
      'es': '@clau.fern.ceo',
      'en': '@clau.fern',
    },
    'ljyr0v89': {
      'es': 'CEO',
      'en': '@clau.fern',
    },
    '0tb1bu9q': {
      'es': 'Mi cuenta',
      'en': 'My account',
    },
    'el6osojt': {
      'es': 'Usuario, contraseña...',
      'en': 'User password...',
    },
    '6tpbz4cu': {
      'es': 'Atencion al cliente',
      'en': 'Technical support',
    },
    'yqjegwrj': {
      'es': 'Responde tus preguntas...',
      'en': 'Answer your questions...',
    },
    'g9wwj6kx': {
      'es': 'Ayuda',
      'en': 'Technical support',
    },
    'ruedi4nj': {
      'es': 'Todas tus dudas...',
      'en': 'Answer your questions...',
    },
    'ooo540dz': {
      'es': 'Método de pago',
      'en': 'Payment method',
    },
    'l7fuaf6s': {
      'es': 'La mejor manera de recibir los....',
      'en': 'The best way to receive...',
    },
    't3ngwlje': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I142ajustes2
  {
    'm2utthdu': {
      'es': 'EDITAR',
      'en': 'SAVE CHANGES',
    },
    '3juaaqtw': {
      'es': 'Ajustes',
      'en': 'Settings',
    },
    'j7s3qlwg': {
      'es': 'Mi cuenta',
      'en': 'My account',
    },
    '0haay6hy': {
      'es': 'Privacidad, seguridad, cambiar email o número',
      'en': 'Privacy, security, change email or number',
    },
    'vpohcwju': {
      'es': 'Negroni',
      'en': 'Personal information',
    },
    '199pamit': {
      'es': 'Información personal',
      'en': 'Personal information',
    },
    'tivq7nhi': {
      'es': 'Claudia Fernandez',
      'en': 'Claudia Fernandez',
    },
    'j00q6b80': {
      'es': '10/09/2023',
      'en': '09/10/2023',
    },
    'paxwoqzv': {
      'es': '@Clau.fer',
      'en': '@Clau.fer',
    },
    'res8obp2': {
      'es': 'Clu.fer@gmail.com',
      'en': 'clu.fer@gmail.com',
    },
    'wehlbodn': {
      'es': 'Ubicación',
      'en': 'Location',
    },
    '7hh5cv4i': {
      'es': 'Monseñor de Andrea 1892',
      'en': 'Monsignor of Andrea 1892',
    },
    'oim9r19p': {
      'es': 'Cambiar contraseña',
      'en': 'Change Password',
    },
    '6z8t0x0v': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I143ajustes3
  {
    '2edkyfqa': {
      'es': 'GUARDAR CAMBIOS',
      'en': 'SAVE CHANGES',
    },
    '6y3dkfc2': {
      'es': 'Ajustes',
      'en': 'Settings',
    },
    'z8hazc8g': {
      'es': 'Mi cuenta',
      'en': 'My account',
    },
    'ach5ojoz': {
      'es': 'Privacidad, seguridad, cambiar email o número',
      'en': 'Privacy, security, change email or number',
    },
    '3kt16jps': {
      'es': 'Negroni',
      'en': 'Personal information',
    },
    'gsa7ldo2': {
      'es': 'Información personal',
      'en': 'Personal information',
    },
    'puyddvwd': {
      'es': 'Claudia Fernandez',
      'en': 'Claudia Fernandez',
    },
    '783qk8hy': {
      'es': '10/09/2023',
      'en': '09/10/2023',
    },
    'ul04q3wj': {
      'es': '@Clau.fer',
      'en': '@Clau.fer',
    },
    'hu6te5ey': {
      'es': 'Clu.fer@gmail.com',
      'en': 'clu.fer@gmail.com',
    },
    'k5qzdr7j': {
      'es': 'Ubicación',
      'en': 'Location',
    },
    'sosqh6cc': {
      'es': 'Monseñor de Andrea 1892',
      'en': 'Monsignor of Andrea 1892',
    },
    '05hvzeme': {
      'es': 'Cambiar contraseña',
      'en': 'Change Password',
    },
    '4xwr5hz3': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I186atencionalcliente
  {
    'ldzjg2dv': {
      'es': 'Atención al Cliente',
      'en': 'Customer Support',
    },
    'o73mweb3': {
      'es': 'Martes, 15',
      'en': 'Tuesday, 15',
    },
    'pww29s3n': {
      'es':
          'Ey! ¿Cómo podemos ayudarte?\nSi estás teniendo problemas\ncon la app mandá:',
      'en':
          'Hey! how can we help you?\nIf you\'re having trouble\nwith the app send:',
    },
    '9gwbjqxb': {
      'es': '. ',
      'en': '.',
    },
    'eir4sq3j': {
      'es': '1. Tengo un problema\ncon la oferta.',
      'en': '1. I have a problem\nwith the offer.',
    },
    'dw3da9qx': {
      'es': '8.30pm',
      'en': '8.30pm',
    },
    'xcuehvpu': {
      'es':
          'Hola! ¿Qué tal? Sí,\ngracias! 1. tengo un\nproblema con la\noferta.',
      'en':
          'Hello! How are you? Yeah,\nthank you! 1. I have a\nproblem with\noffer.',
    },
    'bo46knba': {
      'es': '8.33pm',
      'en': '8.33pm',
    },
    'm4865yy4': {
      'es': 'Escribir...',
      'en': 'Write...',
    },
    '29sd0tly': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I145ayuda
  {
    'q9d2f5fr': {
      'es': 'Ajustes',
      'en': 'Calendar',
    },
    'b4ziimnm': {
      'es': 'Ayuda',
      'en': 'Payment method',
    },
    'h62gl7px': {
      'es': 'Buscar...',
      'en': '',
    },
    '6rfqzfip': {
      'es': 'Tengo un problema',
      'en': '',
    },
    'nek8a53l': {
      'es': 'Estado de la cuenta',
      'en': '',
    },
    'nkj6ifnr': {
      'es': 'Privacidad y seguridad',
      'en': '',
    },
    'j6hou8ee': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I146tengounproblema
  {
    'x3elvsq8': {
      'es': 'IR A MI CASILLA DE MAIL',
      'en': '',
    },
    'n5lilfog': {
      'es': 'Ajustes',
      'en': 'Calendar',
    },
    '62u9tthf': {
      'es': 'Ayuda',
      'en': 'Payment method',
    },
    'pcl1652x': {
      'es': 'Tengo un problema',
      'en': '',
    },
    'n5ix6z32': {
      'es': 'Mandá un mail a info@litapp.com indicando el problema.',
      'en': '',
    },
    't8nc4aka': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I149estadodelacuenta
  {
    'tib5290k': {
      'es': 'Ajustes',
      'en': 'Calendar',
    },
    '36jl20dd': {
      'es': 'Estado de la cuenta',
      'en': 'Payment method',
    },
    '88q722ok': {
      'es': 'Mandá un mail a info@litapp.com indicando el problema.',
      'en': '',
    },
    'f5bi22hl': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.',
      'en': '',
    },
    '9jgv8qx2': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.',
      'en': '',
    },
    '4glbxvuu': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.',
      'en': '',
    },
    'uhcj48i6': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I150seguridadyprivacidad
  {
    'sapt89yq': {
      'es': 'Ajustes',
      'en': 'Calendar',
    },
    '2w1zdnv7': {
      'es': 'Seguridad y Privacidad',
      'en': 'Payment method',
    },
    'ykrd1ksm': {
      'es':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.\nLorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi.',
      'en': '',
    },
    'a5zv12bp': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I147ayuda
  {
    '8ldr8asq': {
      'es': 'Ajustes',
      'en': 'Calendar',
    },
    'ugft25nk': {
      'es': 'Ayuda',
      'en': 'Payment method',
    },
    'zhwiryh0': {
      'es': 'No me anda el chat...',
      'en': '',
    },
    'x3vji07i': {
      'es': 'Tengo un problema',
      'en': '',
    },
    'rxkmp0ek': {
      'es': 'Estado de la cuenta',
      'en': '',
    },
    'bqn681sz': {
      'es': 'Privacidad y seguridad',
      'en': '',
    },
    'qoc1x9ff': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I148ayudanoseencontro
  {
    'gbur879v': {
      'es': 'Ajustes',
      'en': 'Calendar',
    },
    'bls5yrfn': {
      'es': 'Ayuda',
      'en': 'Payment method',
    },
    'ga1m9efw': {
      'es': 'No me anda el chat...',
      'en': '',
    },
    '1lzgflkk': {
      'es':
          'No encontramos nada relacionado a tu búsqueda, podés probar reportando el problema',
      'en': '',
    },
    '1wj30f7z': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // I38metododepagocomercio
  {
    'h0fqpeem': {
      'es': 'Calendario',
      'en': 'Calendar',
    },
    '4ijbhpuh': {
      'es': 'Método de pago',
      'en': 'Payment method',
    },
    'vjywfw73': {
      'es': 'Sincronizar',
      'en': 'Sync up',
    },
    'cd4me8dx': {
      'es': 'Sincronizar',
      'en': 'Sync up',
    },
    'p1rv0c73': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // A2Inicio
  {
    'ltt7bxz8': {
      'es': 'INICIAR SESIÓN',
      'en': '',
    },
    'yakcoo7j': {
      'es': 'USUARIO',
      'en': '',
    },
    '7tttp2ry': {
      'es': 'CONTRASEÑA',
      'en': '',
    },
    'n4mvnrax': {
      'es': 'INICIAR SESIÓN',
      'en': '',
    },
    '7paiutal': {
      'es': 'Home',
      'en': '',
    },
  },
  // A3Comercio
  {
    '3l6s05iz': {
      'es': 'Comercios',
      'en': '',
    },
    'mh9ukq53': {
      'es': 'Filtrar por',
      'en': '',
    },
    'a0zd4jhu': {
      'es': 'Filtrar por',
      'en': '',
    },
    '9a0vjy2h': {
      'es': 'Dia',
      'en': '',
    },
    'mw3nfer8': {
      'es': 'Search for an item...',
      'en': '',
    },
    'tvbfvrk0': {
      'es': 'Mes',
      'en': '',
    },
    'h1e499h6': {
      'es': 'Search for an item...',
      'en': '',
    },
    'an4gcih5': {
      'es': 'Año',
      'en': '',
    },
    'yd9yw2n0': {
      'es': 'Search for an item...',
      'en': '',
    },
    'dhm2dumg': {
      'es': 'Mostrar como',
      'en': '',
    },
    'fatc8glo': {
      'es': 'NUEVOS COMERCIANTES',
      'en': '',
    },
    'c5l8z3r9': {
      'es': '24',
      'en': '',
    },
    '9gqv59cl': {
      'es': 'en el último mes',
      'en': '',
    },
    'ajdd873x': {
      'es': 'BAJAS',
      'en': '',
    },
    'rr6dmss4': {
      'es': '24',
      'en': '',
    },
    'aq4ge67a': {
      'es': 'en el último mes',
      'en': '',
    },
    '3drwc49m': {
      'es': 'NUEVAS SOLICITUDES',
      'en': '',
    },
    'jhkjh7k2': {
      'es': '24',
      'en': '',
    },
    'k3kme18t': {
      'es': 'en el último mes',
      'en': '',
    },
    'hqzvhh9c': {
      'es': 'RUBRO MAS CONTRATADO',
      'en': '',
    },
    'bk4p37tf': {
      'es': 'MODA',
      'en': '',
    },
    'r0smdgf4': {
      'es': 'en el último mes',
      'en': '',
    },
    '8jvzqaq7': {
      'es': 'Home',
      'en': '',
    },
  },
  // A7Comercio
  {
    'p3vowlbo': {
      'es': '46 STREET',
      'en': '',
    },
    'gfjonpdi': {
      'es': 'Miembro desde 13/09/2022',
      'en': '',
    },
    'z5b8cnvv': {
      'es': 'ELIMINAR',
      'en': '',
    },
    '2nrd450k': {
      'es': 'Contacto',
      'en': '',
    },
    'vhebixg4': {
      'es': '47street@gmail.com',
      'en': '',
    },
    'ush6g30o': {
      'es': '+54 911 60457878',
      'en': '',
    },
    'cad0fhlb': {
      'es': 'Membresía',
      'en': '',
    },
    '44c45mpy': {
      'es': 'Platinum',
      'en': '',
    },
    'bj7b4w5a': {
      'es': 'Campañas creadas',
      'en': '',
    },
    'im326qjf': {
      'es': 'Ultimo mes',
      'en': '',
    },
    '23t5sm76': {
      'es': '30',
      'en': '',
    },
    'k70c1zq8': {
      'es': 'Ultima semana',
      'en': '',
    },
    'jxx73ddw': {
      'es': '30% +',
      'en': '',
    },
    '3nu4cg7g': {
      'es': 'Campañas activas',
      'en': '',
    },
    'cmdxlus9': {
      'es': '30',
      'en': '',
    },
    'yqnmvnmx': {
      'es': 'Ultima semana',
      'en': '',
    },
    'afybzpe8': {
      'es': '30% +',
      'en': '',
    },
    'of035ofe': {
      'es': 'Historial',
      'en': '',
    },
    '5e2oi3cu': {
      'es': 'Buscar...',
      'en': '',
    },
    'n1lv3skt': {
      'es': 'Camila mendez ',
      'en': '',
    },
    'ux336abh': {
      'es': 'Acción - Stories ',
      'en': '',
    },
    'bf2g5rna': {
      'es': '20/03/2022',
      'en': '',
    },
    '4o71y2zh': {
      'es': 'Campaña de marketing',
      'en': '',
    },
    'h7irg50j': {
      'es': 'POR CANJE',
      'en': '',
    },
    '75jgzelr': {
      'es': 'Cancelaciones',
      'en': '',
    },
    'uj1m1abt': {
      'es': '2/',
      'en': '',
    },
    'iu000raa': {
      'es': '3',
      'en': '',
    },
    '3ljvjfrz': {
      'es': 'Camila mendez ',
      'en': '',
    },
    't5jzlciv': {
      'es': 'Acción - Stories ',
      'en': '',
    },
    '6qrtzfsh': {
      'es': '20/03/2022',
      'en': '',
    },
    'g3nye4l9': {
      'es': 'Campaña de marketing',
      'en': '',
    },
    'lqofwx7z': {
      'es': 'Cancelada',
      'en': '',
    },
    'tyu6dt9m': {
      'es': 'Camila mendez ',
      'en': '',
    },
    '6w3wlqyp': {
      'es': 'Acción - Stories ',
      'en': '',
    },
    'z8nk82va': {
      'es': '20/03/2022',
      'en': '',
    },
    'u6pxceaw': {
      'es': 'Campaña de marketing',
      'en': '',
    },
    'emob7d79': {
      'es': 'Cancelada',
      'en': '',
    },
    'p3pf08an': {
      'es': 'SUSPENDER USUARIO',
      'en': '',
    },
    '89oi8mul': {
      'es': 'Pagos comerciantes',
      'en': '',
    },
    'q6fk9l9g': {
      'es': 'Resúmen de pagos y clases del usuario Julian Alonso.',
      'en': '',
    },
    '7si4j0tb': {
      'es': 'Buscar...',
      'en': '',
    },
    'gs60kv4g': {
      'es': 'Resúmen',
      'en': '',
    },
    'faqb7t7t': {
      'es': 'Total del mes:',
      'en': '',
    },
    'd72wxwa2': {
      'es': '\$ 7500',
      'en': '',
    },
    '72e0h9ko': {
      'es': 'Comentarios',
      'en': '',
    },
    'nwcczt56': {
      'es': 'Buscar...',
      'en': '',
    },
    'yf2tud1z': {
      'es': 'Sol Gomez',
      'en': '',
    },
    '1oivsvr6': {
      'es': 'Muy profesionales y muy ordenados con todos los pagos!',
      'en': '',
    },
    'lawt06vu': {
      'es': 'Sol Gomez',
      'en': '',
    },
    'wu9rw7dp': {
      'es': 'Muy profesionales y muy ordenados con todos los pagos!',
      'en': '',
    },
    'v9s3a2oy': {
      'es': 'Calendario',
      'en': '',
    },
    'quqjdk6b': {
      'es': 'Buscar...',
      'en': '',
    },
    'we578k65': {
      'es': 'Nike',
      'en': '',
    },
    '7pc8y9ej': {
      'es': 'Campaña Welnness',
      'en': '',
    },
    'yfwzxgoo': {
      'es': '20/03/2022',
      'en': '',
    },
    'kya2eo8x': {
      'es': 'Nike',
      'en': '',
    },
    'wjlaxo2t': {
      'es': 'Campaña Welnness',
      'en': '',
    },
    'mqxbt30u': {
      'es': '20/03/2022',
      'en': '',
    },
    'gaii7q8k': {
      'es': 'Nike',
      'en': '',
    },
    'budmah79': {
      'es': 'Campaña Welnness',
      'en': '',
    },
    'hq8n8c0r': {
      'es': '20/03/2022',
      'en': '',
    },
    'h8wero5i': {
      'es': 'Estadísticas',
      'en': '',
    },
    '540epbrx': {
      'es': 'OFERTAS ACEPTADAS',
      'en': '',
    },
    's86m2d58': {
      'es': '100',
      'en': '',
    },
    '3bk5v6np': {
      'es': 'en el último mes',
      'en': '',
    },
    'f1h2g814': {
      'es': ' INFLUENCERS  CON LOS QUE TRABAJO ',
      'en': '',
    },
    'co4oi7w9': {
      'es': '24',
      'en': '',
    },
    'xkssxs2d': {
      'es': 'en el último mes',
      'en': '',
    },
    'k9hnxfx8': {
      'es': 'BAJAS DE INFLUENCERS',
      'en': '',
    },
    '18yx2xe6': {
      'es': '45',
      'en': '',
    },
    'vvbawqqz': {
      'es': 'en el último mes',
      'en': '',
    },
    'vhy5u116': {
      'es': 'Home',
      'en': '',
    },
  },
  // roles
  {
    'p8f2jd2y': {
      'es': 'Influencers',
      'en': '',
    },
    'k27q6hdn': {
      'es': 'Comercios',
      'en': '',
    },
    'f4uppux9': {
      'es': 'Page Title',
      'en': '',
    },
    '8z7td72o': {
      'es': 'Home',
      'en': '',
    },
  },
  // I14MensajeClaveIncorrecta
  {
    'lziad38j': {
      'es': '¡Las contraseñas \nno coinciden!',
      'en': 'The passwords\ndo not match!',
    },
    'svbjmbyk': {
      'es': 'Verificá que ambas contraseñas \nsean iguales.',
      'en': 'Verify that both passwords\nbe equal.',
    },
    'tz7yefw3': {
      'es': 'REINTENTAR',
      'en': 'RETRY',
    },
  },
  // I13mensajeclavenueva
  {
    '0vu84ji7': {
      'es': 'Cambio realizado',
      'en': 'Change made',
    },
    'hanrxx9u': {
      'es': 'Tu contraseña ha sido modificada\ncorrectamente.',
      'en': 'Your password has been changed\ncorrectly.',
    },
    '4q39hyw8': {
      'es': 'COMENZAR',
      'en': 'BEGIN',
    },
  },
  // I209mensajedecodigoincorrecto
  {
    'clnqcn1z': {
      'es': 'Error',
      'en': 'Mistake',
    },
    'brggmxad': {
      'es': 'El código no coincide con el que te\nenviamos.',
      'en': 'The code does not match the one you\nwe send.',
    },
    'znp88ohz': {
      'es': 'REENVIAR CODIGO',
      'en': 'RESEND CODE',
    },
  },
  // I51Registroexitoso
  {
    'nvx3t073': {
      'es': 'Registro exitoso!',
      'en': 'Successful change!',
    },
    '5mkon361': {
      'es': 'Estamos evaluando tu perfil. En\nbreve nos pondremos en contacto.',
      'en': 'We are evaluating your profile. In\nwe will contact you shortly.',
    },
    's9ax2123': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
  },
  // I46Solicitudaceptada
  {
    'yruk0ura': {
      'es': 'Solicitud Aceptada',
      'en': 'Request accepted',
    },
    'fc2vvv9y': {
      'es':
          'Hola @Wanda, tu solicitud a la oferta \nfue aceptada. \nSalí a divertirte y compartí tu experiencia.\n',
      'en':
          'Hello @Wanda, your request for the offer\nwas accepted.\nI went out to have fun and shared your experience.',
    },
    '324orrre': {
      'es': 'No te olvides de arrobar al comercio!',
      'en': 'Don\'t forget to throw in the trade!',
    },
    'jy6fvohm': {
      'es': 'EMPEZAR',
      'en': 'BEGIN',
    },
  },
  // I47sincronizarsolicitud
  {
    'aegqgmyu': {
      'es': 'Solicitud Aceptada',
      'en': 'Request accepted',
    },
    'nuts7etb': {
      'es':
          'Hola @Wanda, tu solicitud a la oferta \nfue aceptada. \nSalí a divertirte y compartí tu experiencia.\n',
      'en':
          'Hello @Wanda, your request for the offer\nwas accepted.\nI went out to have fun and shared your experience.',
    },
    'xg5x9p15': {
      'es': 'No te olvides de arrobar al comercio!',
      'en': 'Don\'t forget to throw in the trade!',
    },
    '228g93a7': {
      'es': 'Sincronizar calendario',
      'en': 'sync calendar',
    },
    'occo1s20': {
      'es': 'Google Calendar',
      'en': 'Google Calendar',
    },
    'bs7l76qq': {
      'es': 'SINCRONIZAR',
      'en': 'SYNC UP',
    },
  },
  // I208ofertanodisponible
  {
    '2dpb7wea': {
      'es': 'Ups! La oferta de @Negroni\nya no esta disponible',
      'en': 'oops! @Negroni\'s offer\nit\'s no longer available',
    },
    'nv9xpawy': {
      'es': 'Encontrá nuevas ofertas en el home.',
      'en': 'Find new offers in the home.',
    },
    '424qus6v': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
  },
  // I202masinformacionenviodemail
  {
    'ockgztpe': {
      'es': 'Vas a recibir un mail con\nmás informacion sobre la\noferta!',
      'en':
          'You will receive an email with\nmore information about the\noffer!',
    },
  },
  // I197informaciondellugar
  {
    't05179yq': {
      'es': 'Negroni',
      'en': 'Negroni',
    },
    'ld42uh2m': {
      'es': 'Bar Premium',
      'en': 'premium bar',
    },
    'uwsdblpd': {
      'es':
          'Una propuesta diferente con \nespíritu Italo-Neoyorquino. \nSushibar, cocktails, cucina & beers. \nEstamos en Miami, Buenos Aires, \nPilar, Pinamar, Rosario, La Plata, \nCityBell, Montevideo y Asu. del\n Paraguay.',
      'en':
          'A different proposal with\nItalo-New York spirit.\nSushibar, cocktails, cuisine & beers.\nWe are in Miami, Buenos Aires,\nPilar, Pinamar, Rosario, La Plata,\nCityBell, Montevideo and Asu. of the\n Paraguayan.',
    },
  },
  // I196EliminarSolicitud
  {
    'fk75jzxh': {
      'es': '¿Estás seguro que\nquerés eliminar la oferta?',
      'en': 'are you sure\nDo you want to remove the offer?',
    },
    '61guce9p': {
      'es':
          'Después de varias cancelaciones\nseguidas tu usuario será suspendido.',
      'en':
          'After several cancellations\nfollowed your user will be suspended.',
    },
    '7rgh8234': {
      'es': 'Cancelación ',
      'en': 'Cancellation',
    },
    'yrjpyrlk': {
      'es': '2',
      'en': '2',
    },
    'h3y7nrcj': {
      'es': '/3',
      'en': '/3',
    },
    'v3rkcx29': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    'db4h9gei': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I193VaciarChat
  {
    '5xgkzi4w': {
      'es': '¿Estás seguro que\nquerés eliminar la chat?',
      'en': 'are you sure\nDo you want to delete the chat?',
    },
    '0ay6myii': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    'zrssrskn': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I45EliminarOferta
  {
    '3jl3llsa': {
      'es': '¿Seguro querés e\nliminar la oferta?',
      'en': 'Are you sure you want to\nremove the offer?',
    },
    'num6yn0e': {
      'es':
          'Después de varias cancelaciones\nseguidas tu usuario será suspendido.',
      'en':
          'After several cancellations\nfollowed your user will be suspended.',
    },
    '7zwujri6': {
      'es': 'Cancelación ',
      'en': 'Cancellation',
    },
    '1hpfus00': {
      'es': '2',
      'en': '2',
    },
    'ckft0yzg': {
      'es': '/3',
      'en': '/3',
    },
    'zzm45be8': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    'm8f1u4w4': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I192borrarnotificaciones
  {
    'ls66j3qh': {
      'es': '¿Estás seguro que\nquerés eliminar la historial?',
      'en': 'are you sure\nDo you want to delete the history?',
    },
    'zusvz7rp': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    'fylwqmhv': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I36CerrarSesion
  {
    '834ecagq': {
      'es': 'Cerrar Sesión',
      'en': 'Sign off',
    },
    '16zosju0': {
      'es': 'Estás seguro de que querés\ncerrar sesión?',
      'en': 'Are you sure you want\nSign off?',
    },
    'o3mgnk1z': {
      'es': 'CERRAR SESIÓN',
      'en': 'SIGN OFF',
    },
    'v97dlnl4': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I39sincronizandocuenta
  {
    '2mehm7ce': {
      'es': 'Se sincronizó tu cuenta!',
      'en': 'Your account has been synced!',
    },
    '6l3cpvg8': {
      'es': 'Redireccionando a Mercado Pago...',
      'en': 'Redirecting to Mercado Pago...',
    },
  },
  // I161Registroexitoso
  {
    'ubv3j92z': {
      'es': 'Registro exitoso!',
      'en': 'Successful change!',
    },
    '0hklj0ar': {
      'es': 'Estamos evaluando tu perfil. En\nbreve nos pondremos en contacto.',
      'en': 'We are evaluating your profile. In\nwe will contact you shortly.',
    },
    '7r1rcnze': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
  },
  // I34contrasenasnocoinciden
  {
    'jrf6j1wh': {
      'es': '¡Las contraseñas \nno coinciden!',
      'en': 'The passwords\ndo not match!',
    },
    '3k8po7m1': {
      'es': 'Verificá que ambas contraseñas \nsean iguales.',
      'en': 'Verify that both passwords\nbe equal.',
    },
    '3akgtxcf': {
      'es': 'REINTENTAR',
      'en': 'RETRY',
    },
  },
  // I33codigonococincide
  {
    'k7ib9jwk': {
      'es': 'Error',
      'en': 'Mistake',
    },
    's3r06pae': {
      'es': 'El código no coincide con el que te\nenviamos.',
      'en': 'The code does not match the one you\nwe send.',
    },
    '2spzkkus': {
      'es': 'REENVIAR CODIGO',
      'en': 'RESEND CODE',
    },
  },
  // I13cambiorealizado
  {
    'km7y70w1': {
      'es': 'Registro exitoso!',
      'en': 'Successful change!',
    },
    'dfnwfbn0': {
      'es': 'Tu contraseña ha sido modificada \ncorrectamente.',
      'en': 'We are evaluating your profile. In\nwe will contact you shortly.',
    },
    'd0e644tq': {
      'es': 'CONTINUAR',
      'en': 'CONTINUE',
    },
  },
  // yasosparte
  {
    'ynyci84a': {
      'es': 'Ya sos parte de Lit!',
      'en': '',
    },
    'h8vdux2r': {
      'es': 'VINCULAR MIS PAGOS',
      'en': '',
    },
  },
  // bienvenido
  {
    '3hcf6bx3': {
      'es': 'Bienvenido!',
      'en': '',
    },
  },
  // I174sincronizaciondecuenta
  {
    'oxjpskar': {
      'es': 'Se sincronizó tu cuenta!',
      'en': 'Your account has been synced!',
    },
    '0cobzc4z': {
      'es': 'Redireccionando a Mercado Pago...',
      'en': 'Redirecting to Mercado Pago...',
    },
  },
  // headercomercioruedita
  {
    'u1oifp41': {
      'es': 'COMERCIO',
      'en': 'INFLUENCERS',
    },
  },
  // I192ofertapublicada
  {
    'chwybojf': {
      'es': 'Oferta Publicada!',
      'en': 'Are you sure you want to\nremove the offer?',
    },
    '5rgcto2w': {
      'es':
          'Preparate para recibir todo el talento de nuestra comunidad de influencers',
      'en':
          'After several cancellations\nfollowed your user will be suspended.',
    },
    'o9u1bx6k': {
      'es': 'CONTINUAR',
      'en': 'ELIMINATE',
    },
  },
  // I212aceptaron
  {
    'cla5c7ud': {
      'es': 'Aceptaron tu oferta',
      'en': 'oops! @Negroni\'s offer\nit\'s no longer available',
    },
    'ni5obsf8': {
      'es': '@Influencer aceptó',
      'en': 'Find new offers in the home.',
    },
    'jdr1reuz': {
      'es': 'VER OFERTA',
      'en': 'CONTINUE',
    },
  },
  // niveldeinfluencer
  {
    'x0h9ry68': {
      'es': 'Nano Influencer',
      'en': '',
    },
    'vctw9squ': {
      'es': 'Mega Influencer',
      'en': '',
    },
    'gvm2sdls': {
      'es': 'Micro Influencer',
      'en': '',
    },
    '5s1csx1j': {
      'es': 'Macro Influencer',
      'en': '',
    },
  },
  // categorias
  {
    'htbyhums': {
      'es': 'Comida',
      'en': '',
    },
    'ika0uzs8': {
      'es': 'Fitness',
      'en': '',
    },
    '20t1ktb6': {
      'es': 'Wellness',
      'en': '',
    },
  },
  // Descripcionpropuesta
  {
    'zkoeiq3s': {
      'es': 'Drinks  + entradas',
      'en': '',
    },
    'efrci1b8': {
      'es': 'Pizza party',
      'en': '',
    },
    'vjk047yk': {
      'es': 'Sushi + Aperol ',
      'en': '',
    },
    'f0kizufo': {
      'es': 'Cafe + brunch',
      'en': '',
    },
  },
  // horario
  {
    'ytl3lwv1': {
      'es': 'Cena',
      'en': '',
    },
    'sw2jopah': {
      'es': 'Brunch',
      'en': '',
    },
    'c97suuic': {
      'es': 'Almuerzo',
      'en': '',
    },
    'ip6ik67k': {
      'es': 'Desayuno',
      'en': '',
    },
  },
  // campanaconinfluencer
  {
    '7zeoof31': {
      'es': 'Campaña de marketing',
      'en': '',
    },
    'p8d1y9ia': {
      'es': 'Campaña con influencer',
      'en': '',
    },
  },
  // plataforma
  {
    '8l6s7n70': {
      'es': 'Instagram',
      'en': '',
    },
    '7xubv2l0': {
      'es': 'Tik Tok',
      'en': '',
    },
    '27e0g0bw': {
      'es': 'Youtube',
      'en': '',
    },
    '37alt9a4': {
      'es': 'Twitch',
      'en': '',
    },
  },
  // formatopublicacion
  {
    'izv94xjv': {
      'es': 'Posteo',
      'en': '',
    },
    'emlll8or': {
      'es': 'Stories',
      'en': '',
    },
    'l14x48o8': {
      'es': 'Reels',
      'en': '',
    },
  },
  // cantidaddepublicaciones
  {
    '8bpexgij': {
      'es': '1',
      'en': '',
    },
    'o8ss0zkn': {
      'es': '2',
      'en': '',
    },
    'ir7b0kqu': {
      'es': '3',
      'en': '',
    },
    '6h21c5ip': {
      'es': '4',
      'en': '',
    },
  },
  // I205
  {
    'ypvxvf71': {
      'es': '¡Llegaste al máximo!',
      'en': 'Sign off',
    },
    't0ba9uvb': {
      'es':
          'Para seleccionar a este influencer tenés que hacer un upgrade en tu membresía.',
      'en': 'Are you sure you want\nSign off?',
    },
    'i6c4otfg': {
      'es': 'UPGRADE',
      'en': 'SIGN OFF',
    },
    'eo5ji4gr': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I206
  {
    'y7s9a060': {
      'es': 'Ups!',
      'en': 'Sign off',
    },
    'bbo0bmqd': {
      'es':
          'Este influencer no está dentro tu membresía. Hacé el upgrade y disfrutá más beneficios.',
      'en': 'Are you sure you want\nSign off?',
    },
    'jq2bjglc': {
      'es': 'UPGRADE',
      'en': 'SIGN OFF',
    },
    'zmp9z69q': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I208upgraderealizado
  {
    'l9tkos9q': {
      'es': 'Upgrade Realizado!',
      'en': 'Mistake',
    },
    '379d1n3q': {
      'es': 'Ya sos “Platinum”. Empezá a disfrutar más beneficios.',
      'en': 'The code does not match the one you\nwe send.',
    },
    'bcaxbd16': {
      'es': 'CONTINUAR',
      'en': 'RESEND CODE',
    },
  },
  // I210baja
  {
    'mcr0shm2': {
      'es': 'El influencer @pedroalonso se dio de baja ',
      'en': 'Mistake',
    },
    '6dht0wt5': {
      'es': 'Podés elegir un nuevo influencer para tu oferta',
      'en': 'The code does not match the one you\nwe send.',
    },
    'i6dklm07': {
      'es': 'BUSCAR NUEVO INFLUENCER',
      'en': 'RESEND CODE',
    },
  },
  // I209BAJA2
  {
    'hn1wymd1': {
      'es': 'El influencer @pedroalonso se dio de baja ',
      'en': 'Mistake',
    },
    'et7vqywh': {
      'es': 'Se asignará un nuevo influencer para tu oferta',
      'en': 'The code does not match the one you\nwe send.',
    },
    'bwrkxygs': {
      'es': 'VER OFERTA',
      'en': 'RESEND CODE',
    },
  },
  // I115eliminaroferta
  {
    'ku5et4az': {
      'es': '¿Seguro querés e\nliminar la oferta?',
      'en': 'Are you sure you want to\nremove the offer?',
    },
    '4gecc9is': {
      'es':
          'Después de varias cancelaciones\nseguidas tu usuario será suspendido.',
      'en':
          'After several cancellations\nfollowed your user will be suspended.',
    },
    '7r57pk74': {
      'es': 'Cancelación ',
      'en': 'Cancellation',
    },
    'xe3351en': {
      'es': '2',
      'en': '2',
    },
    'ajmuax66': {
      'es': '/3',
      'en': '/3',
    },
    'hkigd5fv': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    'sww4w11v': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I181califarinfluencer
  {
    'vbvg8e92': {
      'es': 'Calificá al influencer',
      'en': 'Mistake',
    },
    'j5l5bmj6': {
      'es': 'Por favor calificá el trabajo del influencer.',
      'en': 'The code does not match the one you\nwe send.',
    },
    '3v3jnd06': {
      'es': 'CALIFICAR',
      'en': 'RESEND CODE',
    },
  },
  // I204eliminaroferta
  {
    'ymk7dosu': {
      'es': '¿Seguro querés e\nliminar la oferta?',
      'en': 'Are you sure you want to\nremove the offer?',
    },
    'e7hooa5x': {
      'es':
          'Después de varias cancelaciones\nseguidas tu usuario será suspendido.',
      'en':
          'After several cancellations\nfollowed your user will be suspended.',
    },
    'jglciu12': {
      'es': 'Cancelación ',
      'en': 'Cancellation',
    },
    '2rvnknhg': {
      'es': '2',
      'en': '2',
    },
    'pm7l2oyv': {
      'es': '/3',
      'en': '/3',
    },
    'emby6a41': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    '9947dz7r': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // Pago
  {
    '2zvmxtf6': {
      'es': 'Mensual',
      'en': '',
    },
    '7u1a2yf6': {
      'es': '5% off',
      'en': '',
    },
    '0i4tvc6m': {
      'es': 'Trimestral',
      'en': '',
    },
    '8pvuzglb': {
      'es': '20% off',
      'en': '',
    },
    'cgjs9jbw': {
      'es': 'Anual',
      'en': '',
    },
    'c9f3wd4b': {
      'es': '50% off',
      'en': '',
    },
  },
  // upgraderealizado
  {
    'hreozumr': {
      'es': 'Upgrade realizado!',
      'en': '',
    },
  },
  // I200eliminarchat
  {
    'gijc6un5': {
      'es': '¿Estás seguro que\nquerés eliminar la chat?',
      'en': 'are you sure\nDo you want to delete the chat?',
    },
    '6z71a6mu': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    'j03dkl3w': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I159eliminaroferta
  {
    '7yt4xw7g': {
      'es': '¿Seguro querés e\nliminar la oferta?',
      'en': 'Are you sure you want to\nremove the offer?',
    },
    'i9f8so7b': {
      'es':
          'Después de varias cancelaciones\nseguidas tu usuario será suspendido.',
      'en':
          'After several cancellations\nfollowed your user will be suspended.',
    },
    'medb0489': {
      'es': 'Cancelación ',
      'en': 'Cancellation',
    },
    'eicg4ckp': {
      'es': '2',
      'en': '2',
    },
    '29t0pnvg': {
      'es': '/3',
      'en': '/3',
    },
    '10qiu4ym': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    'merannbz': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I202Eliminarhistorial
  {
    '3iobi3zi': {
      'es': '¿Estás seguro que\nquerés eliminar la historial?',
      'en': 'are you sure\nDo you want to delete the history?',
    },
    'yjsih7yv': {
      'es': 'ELIMINAR',
      'en': 'ELIMINATE',
    },
    '4tdofou7': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // I39comercio
  {
    'fvixzend': {
      'es': 'Se sincronizó tu cuenta!',
      'en': 'Your account has been synced!',
    },
    '2hn3gckx': {
      'es': 'Redireccionando a Mercado Pago...',
      'en': 'Redirecting to Mercado Pago...',
    },
  },
  // I141cerrarsesion
  {
    'wlnan392': {
      'es': 'Cerrar Sesión',
      'en': 'Sign off',
    },
    '7gw9ucbc': {
      'es': '¿Seguro querés cerrar sesión?',
      'en': 'Are you sure you want\nSign off?',
    },
    '3ogzeklq': {
      'es': 'CERRAR SESIÓN',
      'en': 'SIGN OFF',
    },
    'xddpnhlf': {
      'es': 'CANCELAR',
      'en': 'CANCEL',
    },
  },
  // SideBar
  {
    'j8b2ifvr': {
      'es': 'Comercios',
      'en': '',
    },
    'q4kbplx7': {
      'es': 'Notificaciones',
      'en': '',
    },
    'mc8ktnre': {
      'es': 'Membresias',
      'en': '',
    },
    '8sxcmq3a': {
      'es': 'Influencers',
      'en': '',
    },
    'jsvkpokj': {
      'es': 'Ofertas',
      'en': '',
    },
    'x2h7h7yt': {
      'es': 'Administración general',
      'en': '',
    },
    'dwamur0q': {
      'es': 'Chat',
      'en': '',
    },
    'yltgerjb': {
      'es': 'Cerrar sesión',
      'en': '',
    },
  },
  // navbar
  {
    'iqvlzp1p': {
      'es': 'Nombre admin',
      'en': '',
    },
    'v5svqrut': {
      'es': 'Buscar',
      'en': '',
    },
  },
  // mostrarcomo
  {
    'p8ttsurc': {
      'es': 'Porcentaje',
      'en': '',
    },
    '0ki5dss3': {
      'es': 'Número',
      'en': '',
    },
  },
  // A4EditarComercio
  {
    'viw0nwty': {
      'es': 'Editar Comercio',
      'en': '',
    },
    'g6zpmyj6': {
      'es': '46 Street',
      'en': '',
    },
    'u1uiscud': {
      'es': 'Moda',
      'en': '',
    },
    'h5bmxm7y': {
      'es': 'Search for an item...',
      'en': '',
    },
    'l1lgarlv': {
      'es': '46s@gmail.com',
      'en': '',
    },
    'cone7vrt': {
      'es': 'Juan Perez',
      'en': '',
    },
    '7qrb0jn5': {
      'es': '************',
      'en': '',
    },
    'gagy6omu': {
      'es': '+5491134567899',
      'en': '',
    },
    '4jg2tx7q': {
      'es': 'Juan Garlos Gruz 100',
      'en': '',
    },
    'clkrr7p8': {
      'es': 'Platinum',
      'en': '',
    },
    'zxpsa8qh': {
      'es': 'Search for an item...',
      'en': '',
    },
    'r4vfvdsj': {
      'es': 'GUARDAR CAMBIO',
      'en': '',
    },
  },
  // A5Editarcomercio
  {
    'ph6je9j2': {
      'es': 'Se ha editado correctamente la inormación de @46Street',
      'en': '',
    },
    'do3r0uuf': {
      'es':
          ' Automáticamente se le enviará una notificación al comercio, \ninformándole los cambios realizados. ',
      'en': '',
    },
    'ug52mkbu': {
      'es': 'GUARDAR',
      'en': '',
    },
  },
  // A6Comecrio
  {
    'j61fenaf': {
      'es': '4 usuarios alcanzaron el límite de cancelaciones!',
      'en': '',
    },
    '5o7vzgc4': {
      'es': 'Puedes ir al perfil para suspender a dichos usuarios.',
      'en': '',
    },
    'bebzq92h': {
      'es': 'CONTINUAR',
      'en': '',
    },
  },
  // filter
  {
    'fq6b649z': {
      'es': 'Mejor a peor',
      'en': '',
    },
    'ap6510n3': {
      'es': 'Mas recientes',
      'en': '',
    },
  },
  // A8comercio
  {
    'bkjjcoqy': {
      'es': 'Se ha editado información del comercio',
      'en': '',
    },
    'vak9sukr': {
      'es':
          'Automáticamente se le enviará una notificación al comercio, informándole los cambios realizados.',
      'en': '',
    },
    'jpegg5iq': {
      'es': 'ACEPTAR',
      'en': '',
    },
  },
  // I55Genero
  {
    '3pf4orfl': {
      'es': 'Femenino',
      'en': '',
    },
    'kivib6uk': {
      'es': 'Masculino',
      'en': '',
    },
  },
  // I207porcentaje
  {
    'i8nn89wn': {
      'es': '10%',
      'en': '',
    },
    'i4lfw7sy': {
      'es': '15%',
      'en': '',
    },
    '9lk5xjl5': {
      'es': '25%',
      'en': '',
    },
  },
  // I206representante
  {
    '12x8hfkh': {
      'es': 'Nombre del representante',
      'en': 'Name',
    },
    'ghqvofof': {
      'es': 'Porcentaje del representante',
      'en': 'Name',
    },
  },
  // I207rol
  {
    '8twyovfb': {
      'es': 'Dueño',
      'en': '',
    },
    'umypgk02': {
      'es': 'Director X',
      'en': '',
    },
    'wvqle87r': {
      'es': 'Otro',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '65uttrkp': {
      'es': '',
      'en': '',
    },
    'nt3re6xj': {
      'es': '',
      'en': '',
    },
    '5qao1r3i': {
      'es': '',
      'en': '',
    },
    'nj0jlnw2': {
      'es': '',
      'en': '',
    },
    'fjy5qxnr': {
      'es': '',
      'en': '',
    },
    'vuywi6qg': {
      'es': '',
      'en': '',
    },
    'm1oafmo5': {
      'es': '',
      'en': '',
    },
    'b2dsjrmf': {
      'es': '',
      'en': '',
    },
    '5lvvjef5': {
      'es': '',
      'en': '',
    },
    'u0278xj4': {
      'es': '',
      'en': '',
    },
    'rz82xe2a': {
      'es': '',
      'en': '',
    },
    '0emybgfo': {
      'es': '',
      'en': '',
    },
    'rcxz9996': {
      'es': '',
      'en': '',
    },
    'i8fkh9np': {
      'es': '',
      'en': '',
    },
    'xkpmeej0': {
      'es': '',
      'en': '',
    },
    'wo0q5dze': {
      'es': '',
      'en': '',
    },
    '0n40mttl': {
      'es': '',
      'en': '',
    },
    'v15xht7m': {
      'es': '',
      'en': '',
    },
    'x8wys0ju': {
      'es': '',
      'en': '',
    },
    'u09eudca': {
      'es': '',
      'en': '',
    },
    'yv06ugyv': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
