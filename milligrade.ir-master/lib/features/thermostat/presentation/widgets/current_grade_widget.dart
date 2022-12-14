import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/const/assets.dart';
import '../../config/const/colors.dart';
import '../../config/const/fonts.dart';

class CurrentGradeWidget extends StatelessWidget {
  const CurrentGradeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

  //! Inddor
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          ImageVectorConst.temp_icon,
          width: w * 0.03,
          height: h * 0.03,
        ),
        Padding(
          padding: EdgeInsets.only(right: w * 0.06, left: w * 0.02),
          child: const Text('Indoor',
              style: TextStyle(
                  color: CustomColor.txt_color,
                  fontFamily: Fonts.ROBOTO,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
        ),
        const Text('25.5',
            style: TextStyle(
                color: Colors.black,
                fontFamily: Fonts.ROBOTO,
                fontSize: 16,
                fontWeight: FontWeight.w800))
      ],
    );
  }
}
