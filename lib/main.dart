import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//import 'package:componentes/src/pages/home_temp.dart';
//import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
//import 'package:componentes/src/pages/avatar_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
          const Locale('en'), // English
          const Locale('es'), // Español
        ],
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}