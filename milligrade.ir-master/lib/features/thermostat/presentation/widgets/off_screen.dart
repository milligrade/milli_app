import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/off_screen_widgets/off_widget.dart';

import 'off_screen_widgets/off_btn_widget.dart';

class OffScreen extends StatefulWidget {
  const OffScreen({super.key});

  @override
  State<OffScreen> createState() => _OffScreenState();
}

class _OffScreenState extends State<OffScreen> {
  @override
  Widget build(BuildContext context) {

    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        off_widget(),
        Expanded(child: Container()),
        Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.1),
          child: off_btn_widget(),
        ),
      ],
    );
  }
}
