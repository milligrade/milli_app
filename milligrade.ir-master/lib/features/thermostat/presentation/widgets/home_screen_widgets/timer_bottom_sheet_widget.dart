import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';
import '../../../config/const/fonts.dart';

class TimeBottomSheetWidget extends StatelessWidget {
 TimeBottomSheetWidget({super.key});

    double _value = 30;

  @override
  Widget build(BuildContext context) {
    
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      color: CustomColor.custom_white,
      height: h * 0.43,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Hold temprator',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: CustomColor.txt_color),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.01, bottom: h * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'For This Temprature',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.txt_color),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.035),
                  child: const Text('25',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: CustomColor.txt_color),
                  ),
                ),
              ],
            ),
          ),
          const Text('18:30',
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: CustomColor.txt_color),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.09),
            child: Column(
              children: [
                NeumorphicSlider(
                  value: _value,
                  max: 100,
                  onChanged: ((percent) {
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: h * 0.05, top: h * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Now'),
                      const Text('1h'),
                      const Text('3h'),
                      const Text('5h'),
                      const Text('12h'),
                      SvgPicture.asset(ImageVectorConst.infinity_icon),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //!Cancel
              NeumorphicButton(
                //margin: EdgeInsets.symmetric(vertical: h * 0.05, horizontal: w * 0.35),
                onPressed: () {
                  print('Hello world');
                  Navigator.of(context).pop();
                },

                margin: EdgeInsets.only(left: w * 0.005),

                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.15, vertical: h * 0.02),

                style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: CustomColor.custom_white),

                //padding: EdgeInsets.symmetric(horizontal: w * 0.05 , vertical: h * 0.02),

                // padding: EdgeInsets.symmetric(horizontal: w * 0.04 , vertical: h * 0.02),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                      color: CustomColor.txt_color,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: Fonts.ROBOTO),
                ),
              ),

              //!Next
              NeumorphicButton(
                onPressed: () {
                  print('Hello world');
                  Navigator.of(context).pop();
                },
                margin: EdgeInsets.only(right: w * 0.05),
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.15, vertical: h * 0.02),
                style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                    depth: 8,
                    color: CustomColor.custom_blue3),
                child: const Text(
                  'Start',
                  style: TextStyle(
                      color: CustomColor.custom_white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: Fonts.ROBOTO),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}