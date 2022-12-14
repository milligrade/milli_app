import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/assets.dart';

import '../../config/const/colors.dart';
import '../../config/const/fonts.dart';

class ActionGradeWidget extends StatelessWidget {
  const ActionGradeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.only(bottom: h * 0.035, right: w * 0.07, left: w * 0.09),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //! mode
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NeumorphicButton(
                  style: NeumorphicStyle(
                      color: CustomColor.bg_main_color,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(16)),
                      depth: 3),
                  onPressed: () {},
                  child: SvgPicture.asset(ImageVectorConst.heat_icon)),
              Padding(
                padding: EdgeInsets.only(top: h * 0.015),
                child: const Text(
                  'Mode',
                  style: TextStyle(
                      color: CustomColor.txt_color,
                      fontFamily: Fonts.ROBOTO,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),

          //! speed
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NeumorphicButton(
                  padding: EdgeInsets.symmetric(
                      vertical: h * 0.015, horizontal: w * 0.03),
                  style: NeumorphicStyle(
                      color: CustomColor.bg_main_color,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(16)),
                      depth: 3),
                  onPressed: () {},
                  child: SvgPicture.asset(ImageVectorConst.fan_icon)),
              Padding(
                padding: EdgeInsets.only(top: h * 0.015),
                child: const Text(
                  'Speed',
                  style: TextStyle(
                      color: CustomColor.txt_color,
                      fontFamily: Fonts.ROBOTO,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),

          //!Timer
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NeumorphicButton(
                  padding: EdgeInsets.symmetric(
                      vertical: h * 0.02, horizontal: w * 0.038),
                  style: NeumorphicStyle(
                      color: CustomColor.bg_main_color,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(16)),
                      depth: 3),
                  onPressed: () {},
                  child: SvgPicture.asset(ImageVectorConst.timer)),
              Padding(
                padding: EdgeInsets.only(top: h * 0.015),
                child: const Text(
                  'Timer',
                  style: TextStyle(
                      color: CustomColor.txt_color,
                      fontFamily: Fonts.ROBOTO,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
