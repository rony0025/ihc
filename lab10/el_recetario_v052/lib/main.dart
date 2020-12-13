import 'package:flutter/material.dart';
import 'login.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:el_recetario_v052/generated/l10n.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Recetario v0.52',
      debugShowCheckedModeBanner: false,
      home: Login(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

    );
  }
}
