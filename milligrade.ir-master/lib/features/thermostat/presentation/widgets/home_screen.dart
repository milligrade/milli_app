import 'package:flutter/material.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/action_grade_widget.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/current_grade_widget.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/home_away_widget.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/setter_grade_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const SetterGradeWidget(),
        SizedBox(height: h * 0.08),
        const CurrentGradeWidget(),
        SizedBox(height: h * 0.05),
        const HomeAwayWidget(),
        Expanded(child: Container()),
        const ActionGradeWidget()
      ],
    );
  }
}
