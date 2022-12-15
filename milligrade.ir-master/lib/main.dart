import 'package:flutter/material.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/colors.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/fonts.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/guide_screens/guide_screen1.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/guide_screens/guide_screen2.dart';

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
          scaffoldBackgroundColor: CustomColor.bg_main_color,
          fontFamily: Fonts.ROBOTO,
          textTheme: const TextTheme(
            
            bodyText1: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                color: CustomColor.txt_wifi_color),

            subtitle1: TextStyle(
                fontWeight: FontWeight.w400, color: CustomColor.txt_color , fontSize: 14.0 , fontFamily: Fonts.ROBOTO ),
          ),
          primarySwatch: Colors.indigo,
          primaryColor: CustomColor.bg_main_color,
          listTileTheme: ListTileThemeData(),
          toggleableActiveColor: CustomColor.bg_main_color,
          appBarTheme:
              const AppBarTheme(backgroundColor: CustomColor.bg_main_color)),
      home: GuideScreen1(),
    );
  }
}
