import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';
import '../../../config/const/fonts.dart';

class FanSpeedBottomSheetWidget extends StatelessWidget {
  const FanSpeedBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      color: CustomColor.custom_white,
      height: h * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text(
            'Fan Speed',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: CustomColor.txt_color),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //! fan off Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      onPressed: () {
                      },
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 0.045, vertical: h * 0.015),
                      style: NeumorphicStyle(
                        color: CustomColor.custom_white,
                        shape: NeumorphicShape.flat,
                        depth: 0.35,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                      ),
                      child: SvgPicture.asset(ImageVectorConst.fan_off_icon)),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.01),
                    child: const Text(
                      'Off',
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontFamily: Fonts.ROBOTO,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              //! Low fan Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.04),
                      onPressed: () {
                      },
                      style: NeumorphicStyle(
                        color: CustomColor.custom_white,
                        depth:  -3 ,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                      ),
                      child: SvgPicture.asset(ImageVectorConst.fan_icon)),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'Low',
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontFamily: Fonts.ROBOTO,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              //! Med Fan Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.03),
                      onPressed: () {
                      },
                      style: NeumorphicStyle(
                          color: CustomColor.custom_white,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(16)),
                          depth: 0.35),
                      child: SvgPicture.asset(ImageVectorConst.med_fan_icon)),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'Med',
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontFamily: Fonts.ROBOTO,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              //! High Fan Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.03),
                      onPressed: () {
                      },
                      style: NeumorphicStyle(
                          color: CustomColor.custom_white,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(16)),
                          depth: 0.35),
                      child: SvgPicture.asset(ImageVectorConst.high_fan_icon)),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'High',
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontFamily: Fonts.ROBOTO,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              //! Auto Fan Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.03),
                      onPressed: () {
                      },
                      style: NeumorphicStyle(
                        depth: 0.35,
                        color: CustomColor.custom_white,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                      ),
                      child: SvgPicture.asset(ImageVectorConst.auto_fan_icon)),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'Auto',
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
        ],
      ),
    );
  }
}