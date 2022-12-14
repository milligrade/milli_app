import 'package:flutter/material.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final primaryColor = Colors.indigo[700];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Nunito',
          primarySwatch: Colors.indigo,
          primaryColor: primaryColor,
          listTileTheme: ListTileThemeData(),
          toggleableActiveColor: primaryColor,
          appBarTheme: AppBarTheme(backgroundColor: primaryColor)),
      home: HomePage(),
    );
  }
}
