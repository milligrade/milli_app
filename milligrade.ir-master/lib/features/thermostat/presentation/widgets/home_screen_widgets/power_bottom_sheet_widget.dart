import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/colors.dart';

import '../../../config/const/fonts.dart';

class PowerBottomSheet extends StatelessWidget {
  const PowerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      color: CustomColor.custom_white,
      height: h * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Are you sure?',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: CustomColor.txt_color),
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

                margin: EdgeInsets.only(left: w * 0.05),

                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.1, vertical: h * 0.02),

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
                      color: CustomColor.custom_blue,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: Fonts.ROBOTO),
                ),
              ),

              //!Next
              NeumorphicButton(
                onPressed: () {},
                margin: EdgeInsets.only(right: w * 0.08),
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.12, vertical: h * 0.02),
                style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                    depth: 8,
                    color: CustomColor.custom_blue),
                child: const Text(
                  'Yes',
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
