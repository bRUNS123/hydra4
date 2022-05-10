// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hola Mundo!`
  String get helloWorld {
    return Intl.message(
      'Hola Mundo!',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `Temática`
  String get theme {
    return Intl.message(
      'Temática',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Oscuro`
  String get dark {
    return Intl.message(
      'Oscuro',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `Claro`
  String get light {
    return Intl.message(
      'Claro',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Azul`
  String get blue {
    return Intl.message(
      'Azul',
      name: 'blue',
      desc: '',
      args: [],
    );
  }

  /// `Idiomas`
  String get language {
    return Intl.message(
      'Idiomas',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Español`
  String get spanish {
    return Intl.message(
      'Español',
      name: 'spanish',
      desc: '',
      args: [],
    );
  }

  /// `Inglés`
  String get english {
    return Intl.message(
      'Inglés',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `INICIAR SESIÓN`
  String get login {
    return Intl.message(
      'INICIAR SESIÓN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `REGISTRARSE`
  String get signup {
    return Intl.message(
      'REGISTRARSE',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Menú 🐍`
  String get menu {
    return Intl.message(
      'Menú 🐍',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Mensajes 🐍`
  String get chat {
    return Intl.message(
      'Mensajes 🐍',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Hydra 🐍`
  String get hydra {
    return Intl.message(
      'Hydra 🐍',
      name: 'hydra',
      desc: '',
      args: [],
    );
  }

  /// `Configuración 🐍`
  String get configuration {
    return Intl.message(
      'Configuración 🐍',
      name: 'configuration',
      desc: '',
      args: [],
    );
  }

  /// `Configuración`
  String get settings {
    return Intl.message(
      'Configuración',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Perfil 🐍`
  String get profile {
    return Intl.message(
      'Perfil 🐍',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Comunidad`
  String get community {
    return Intl.message(
      'Comunidad',
      name: 'community',
      desc: '',
      args: [],
    );
  }

  /// `Favoritos`
  String get favorites {
    return Intl.message(
      'Favoritos',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Anuncios`
  String get announcement {
    return Intl.message(
      'Anuncios',
      name: 'announcement',
      desc: '',
      args: [],
    );
  }

  /// `Archivos`
  String get files {
    return Intl.message(
      'Archivos',
      name: 'files',
      desc: '',
      args: [],
    );
  }

  /// `Notificaciones`
  String get notifications {
    return Intl.message(
      'Notificaciones',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar Sesión`
  String get logout {
    return Intl.message(
      'Cerrar Sesión',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Buscar`
  String get search {
    return Intl.message(
      'Buscar',
      name: 'search',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
