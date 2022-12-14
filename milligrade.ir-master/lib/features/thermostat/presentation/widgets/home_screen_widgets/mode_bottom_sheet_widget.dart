import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/home_screen_widgets/power_bottom_sheet_widget.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';
import '../../../config/const/fonts.dart';

class ModeBottomSheetWidget extends StatelessWidget {
  const ModeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      color: CustomColor.custom_white,
      height: h * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Choose mode',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: CustomColor.txt_color),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //! off Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      onPressed: () {
                        //! send value to Screen
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => PowerBottomSheet());
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
                      child: SvgPicture.asset(ImageVectorConst.off_icon)),
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

              //! Heat Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.04),
                      onPressed: () {},
                      style: NeumorphicStyle(
                        color: CustomColor.custom_white,
                        depth: -3,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                      ),
                      child: SvgPicture.asset(
                        ImageVectorConst.heat_icon,
                        color: Colors.grey,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'Heat',
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontFamily: Fonts.ROBOTO,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              //! Cool Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.03),
                      onPressed: () {},
                      style: NeumorphicStyle(
                          color: CustomColor.custom_white,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(16)),
                          depth: 0.35),
                      child: SvgPicture.asset(
                        ImageVectorConst.cool_icon,
                        color: Colors.grey,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'Cool',
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontFamily: Fonts.ROBOTO,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              //! Heat & Cool Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.03),
                      onPressed: () {},
                      style: NeumorphicStyle(
                          color: CustomColor.custom_white,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(16)),
                          depth: 0.35),
                      child: SvgPicture.asset(ImageVectorConst.cold_heat_icon)),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'Heat/Cool',
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontFamily: Fonts.ROBOTO,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),

              //! Fan Icon
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NeumorphicButton(
                      padding: EdgeInsets.symmetric(
                          vertical: h * 0.015, horizontal: w * 0.03),
                      onPressed: () {},
                      style: NeumorphicStyle(
                        depth: 0.35,
                        color: CustomColor.custom_white,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                      ),
                      child: SvgPicture.asset(ImageVectorConst.fan_icon)),
                  Padding(
                    padding: EdgeInsets.only(top: w * 0.015),
                    child: const Text(
                      'Fan',
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
