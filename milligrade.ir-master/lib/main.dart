import 'package:flutter/material.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/colors.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/fonts.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/pages/home_page.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/pages/off_page.dart';

import 'features/thermostat/presentation/pages/thermostat_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MilliGrade',
      theme: ThemeData(
          scaffoldBackgroundColor: CustomColor.bg_main_color ,
          fontFamily: Fonts.ROBOTO,
          primarySwatch: Colors.indigo,
          primaryColor: CustomColor.bg_main_color,
          listTileTheme: ListTileThemeData(),
          toggleableActiveColor: CustomColor.bg_main_color,
          appBarTheme: const AppBarTheme(backgroundColor: CustomColor.bg_main_color)),
      home: OffPage(),
    );
  }
}
