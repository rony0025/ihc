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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Pagina de Inicio`
  String get saludos {
    return Intl.message(
      'Pagina de Inicio',
      name: 'saludos',
      desc: '',
      args: [],
    );
  }

  /// `Correo Electrónico`
  String get correo {
    return Intl.message(
      'Correo Electrónico',
      name: 'correo',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get contrasenia {
    return Intl.message(
      'Contraseña',
      name: 'contrasenia',
      desc: '',
      args: [],
    );
  }

  /// `¿Olvidates tu contraseña?`
  String get contraseniaolvidada {
    return Intl.message(
      '¿Olvidates tu contraseña?',
      name: 'contraseniaolvidada',
      desc: '',
      args: [],
    );
  }

  /// `Guardar inicio de sesión`
  String get guardarinicio {
    return Intl.message(
      'Guardar inicio de sesión',
      name: 'guardarinicio',
      desc: '',
      args: [],
    );
  }

  /// `INGRESO`
  String get botoningreso {
    return Intl.message(
      'INGRESO',
      name: 'botoningreso',
      desc: '',
      args: [],
    );
  }

  /// `¿No tienes una cuenta?`
  String get registrateaqui1 {
    return Intl.message(
      '¿No tienes una cuenta?',
      name: 'registrateaqui1',
      desc: '',
      args: [],
    );
  }

  /// ` Registrate aquí`
  String get registrateaqui2 {
    return Intl.message(
      ' Registrate aquí',
      name: 'registrateaqui2',
      desc: '',
      args: [],
    );
  }

  /// `CERRAR SESION`
  String get cerrarsesion {
    return Intl.message(
      'CERRAR SESION',
      name: 'cerrarsesion',
      desc: '',
      args: [],
    );
  }

  /// `Recetario Personal`
  String get listapersonalderecetas {
    return Intl.message(
      'Recetario Personal',
      name: 'listapersonalderecetas',
      desc: '',
      args: [],
    );
  }

  /// `INSERTAR RECETA`
  String get botoninsertar {
    return Intl.message(
      'INSERTAR RECETA',
      name: 'botoninsertar',
      desc: '',
      args: [],
    );
  }

  /// `VER`
  String get botonver {
    return Intl.message(
      'VER',
      name: 'botonver',
      desc: '',
      args: [],
    );
  }

  /// `MODIFICAR`
  String get botonmodificar {
    return Intl.message(
      'MODIFICAR',
      name: 'botonmodificar',
      desc: '',
      args: [],
    );
  }

  /// `BORRAR`
  String get botonborrar {
    return Intl.message(
      'BORRAR',
      name: 'botonborrar',
      desc: '',
      args: [],
    );
  }

  /// `VOLVER`
  String get botonvolver {
    return Intl.message(
      'VOLVER',
      name: 'botonvolver',
      desc: '',
      args: [],
    );
  }

  /// `Restablecer Contraseña`
  String get resetearpassword {
    return Intl.message(
      'Restablecer Contraseña',
      name: 'resetearpassword',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese su Email: `
  String get ingresamail {
    return Intl.message(
      'Ingrese su Email: ',
      name: 'ingresamail',
      desc: '',
      args: [],
    );
  }

  /// `ENVIAR`
  String get botonenviar {
    return Intl.message(
      'ENVIAR',
      name: 'botonenviar',
      desc: '',
      args: [],
    );
  }

  /// `Registrarse`
  String get registrarse {
    return Intl.message(
      'Registrarse',
      name: 'registrarse',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa tu nombre completo:`
  String get ingresatunombre {
    return Intl.message(
      'Ingresa tu nombre completo:',
      name: 'ingresatunombre',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa tu correo electrónico:`
  String get ingresatucorreo {
    return Intl.message(
      'Ingresa tu correo electrónico:',
      name: 'ingresatucorreo',
      desc: '',
      args: [],
    );
  }

  /// `Ingresa tu número telefónico:`
  String get ingresatunumero {
    return Intl.message(
      'Ingresa tu número telefónico:',
      name: 'ingresatunumero',
      desc: '',
      args: [],
    );
  }

  /// `GUARDAR`
  String get botonregistrarse {
    return Intl.message(
      'GUARDAR',
      name: 'botonregistrarse',
      desc: '',
      args: [],
    );
  }

  /// `Ver Receta`
  String get verreceta {
    return Intl.message(
      'Ver Receta',
      name: 'verreceta',
      desc: '',
      args: [],
    );
  }

  /// `Nombre de la receta`
  String get nombredereceta {
    return Intl.message(
      'Nombre de la receta',
      name: 'nombredereceta',
      desc: '',
      args: [],
    );
  }

  /// `Categoría`
  String get categoria {
    return Intl.message(
      'Categoría',
      name: 'categoria',
      desc: '',
      args: [],
    );
  }

  /// `Ingredientes`
  String get ingredientes {
    return Intl.message(
      'Ingredientes',
      name: 'ingredientes',
      desc: '',
      args: [],
    );
  }

  /// `Preparación`
  String get preparacion {
    return Intl.message(
      'Preparación',
      name: 'preparacion',
      desc: '',
      args: [],
    );
  }

  /// `Modificar Receta`
  String get modificarreceta {
    return Intl.message(
      'Modificar Receta',
      name: 'modificarreceta',
      desc: '',
      args: [],
    );
  }

  /// `SI`
  String get botonsi {
    return Intl.message(
      'SI',
      name: 'botonsi',
      desc: '',
      args: [],
    );
  }

  /// `NO`
  String get botonno {
    return Intl.message(
      'NO',
      name: 'botonno',
      desc: '',
      args: [],
    );
  }

  /// `Insertar Receta`
  String get insertarreceta {
    return Intl.message(
      'Insertar Receta',
      name: 'insertarreceta',
      desc: '',
      args: [],
    );
  }

  /// `¿Borrar Receta?`
  String get borrarreceta {
    return Intl.message(
      '¿Borrar Receta?',
      name: 'borrarreceta',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es', countryCode: 'PE'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}