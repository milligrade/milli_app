import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../config/const/colors.dart';

class HomeAwayWidget extends StatefulWidget {
  const HomeAwayWidget({super.key});

  @override
  State<HomeAwayWidget> createState() => _HomeAwayWidgetState();
}

class _HomeAwayWidgetState extends State<HomeAwayWidget> {
  List<bool> home_list = [true, false];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Wrap(children: [
      NeumorphicButton(
          onPressed: () {
            setState(() {
              home_list[0] == true;
              home_list = [true, false];
            });
          },
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.015),
          style: NeumorphicStyle(
            color: home_list[0] == true
                ? CustomColor.bg_main_color
                : CustomColor.bg_color,
            shape: NeumorphicShape.flat,
            depth: home_list[0] == true ? -5 : 3,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
          ),
          child: Text(
            'Home',
            style: TextStyle(
              fontWeight:
                  home_list[0] == true ? FontWeight.bold : FontWeight.normal,
            ),
          )),
      NeumorphicButton(
          onPressed: () {
            setState(() {
              home_list[1] == true;
              home_list = [false, true];
            });
          },
          margin: EdgeInsets.symmetric(horizontal: w * 0.04),
          padding: EdgeInsets.symmetric(
            horizontal: w * 0.04,
            vertical: h * 0.015,
          ),
          style: NeumorphicStyle(
            color: home_list[1] == true
                ? CustomColor.bg_main_color
                : CustomColor.bg_color,
            shape: NeumorphicShape.flat,
            depth: home_list[1] == true ? -5 : 3,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
          ),
          child: Text('Away',
              style: TextStyle(
                fontWeight:
                    home_list[1] == true ? FontWeight.bold : FontWeight.normal,
              )))
    ]);
  }
}
