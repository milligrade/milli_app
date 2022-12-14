
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';
import '../../../config/const/fonts.dart';

class off_btn_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NeumorphicButton(
            padding:
                EdgeInsets.symmetric(vertical: h * 0.02, horizontal: w * 0.045),
            onPressed: () {},
            style: NeumorphicStyle(
              color: CustomColor.bg_main_color,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
            ),
            child: SvgPicture.asset(
              ImageVectorConst.off_icon,
              color: CustomColor.off_blue_color,
            )),
        Padding(
          padding: EdgeInsets.only(top: h * 0.015),
          child: const Text(
            'On',
            style: TextStyle(
                color: CustomColor.txt_color,
                fontFamily: Fonts.ROBOTO,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
