import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';
import '../../../config/const/fonts.dart';

class SetterGradeWidget extends StatelessWidget {
  const SetterGradeWidget({Key? key}) : super(key: key);

  double CenterValue(int? value, double w) {
    //up to 200
    if (value! >= 200) {
      return w * 0.045;

      //under 100
    } else if (value < 100) {
      return w * 0.15;

      //between 100 - 200
    } else {
      return w * 0.01;
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      height: h * 0.42,
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          //!middle
          Positioned(
              top: h * 0.04,
              left: w * 0.15,
              width: w * 0.65,
              height: h * 0.32,
              child: Neumorphic(
                  style: NeumorphicStyle(
                      //shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(32)),
                      depth: 8,
                      //lightSource: LightSource.topLeft,
                      color: CustomColor.bg_main_color),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        //padding: EdgeInsets.only(left: widget.w * 0.001),
                        width: w * 0.4,
                        height: w * 0.3,
                        //color: Colors.yellow,
                        child: Stack(
                          children: [
                            Positioned(
                                left: w * 0.32,
                                bottom: h * 0.1,
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontFamily: Fonts.MiniSystem,
                                      color: CustomColor.custom_orange,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.end,
                                )),
                            Positioned(
                                top: h * 0.04,
                                left: CenterValue(250, w),
                                child: Text(
                                  '25',
                                  style: TextStyle(
                                      fontSize: 96,
                                      fontFamily: Fonts.MiniSystem,
                                      color: CustomColor.custom_orange,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: w * 0.12, vertical: h * 0.025),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Visibility(
                                visible: true,
                                child: SvgPicture.asset(
                                    ImageVectorConst.moon_icon)),
                            Text(
                              'Untill',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Fonts.ROBOTO,
                                  color: CustomColor.txt_color,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '18:30', //*display infinity
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Fonts.ROBOTO,
                                  color: CustomColor.txt_color,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),

          //!top
          Positioned(
              top: h * 0.015,
              left: w * 0.4,
              width: w * 0.14,
              height: h * 0.07,
              child: NeumorphicButton(
                  //margin: EdgeInsets.symmetric(vertical: h * 0.005 , horizontal: w * 0.008),
                  style: NeumorphicStyle(
                    //shape: NeumorphicShape.concave,
                    color: CustomColor.custom_white,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                  onPressed: () {},
                  child: Center(
                      child: SvgPicture.asset(ImageVectorConst.plus_icon)))),

          //! bottom
          Positioned(
              top: h * 0.32,
              left: w * 0.4,
              width: w * 0.14,
              height: h * 0.07,
              child: NeumorphicButton(
                  //margin: EdgeInsets.symmetric(vertical: h * 0.005 , horizontal: w * 0.008),
                  style: NeumorphicStyle(
                    //shape: NeumorphicShape.concave,
                    color: CustomColor.custom_white,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.only(left: w * 0.01, right: w * 0.01),
                  child: Center(
                      child: SvgPicture.asset(ImageVectorConst.minus_icon)))),
        ],
      ),
    );
  }
}
