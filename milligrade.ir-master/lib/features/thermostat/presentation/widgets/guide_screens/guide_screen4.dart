import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/assets.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/guide_screens/guide_screen5.dart';

import '../../../config/const/colors.dart';
import '../../../config/const/fonts.dart';
import '../../../config/const/strings.dart';

class GuideScreen4 extends StatelessWidget {
  const GuideScreen4({super.key});

  @override
  Widget build(BuildContext context) {
     var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: w * 0.09, bottom: w * 0.08),
                child: Image.asset(ImageVectorConst.thermostat_setting4_img,
                    width: w * 0.6),
              ),
              Column(
                children: [
                  Text(
                    CustomString.wifi_setting4_1,
                    style: Theme.of(context).textTheme.bodyText1
                  ),

                  SizedBox(
                    height: h * 0.08,
                  ),

                  RichText(
                    text: TextSpan(
                      text: CustomString.wifi_setting4_2,
                      style: Theme.of(context).textTheme.subtitle1,
                      children: <TextSpan>[
                        TextSpan(
                            text: CustomString.wifi_setting4_3,
                            style:Theme.of(context).textTheme.subtitle1!.copyWith(color: CustomColor.txt_wifi_color , fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: CustomString.wifi_setting4_4,
                            style:
                                Theme.of(context).textTheme.subtitle1)
                      ],
                    ),
                  ),
                  //SizedBox(height: h * 0.05,),
                ],
              ),
               
               Expanded(
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: w * 0.03, right: w * 0.03, bottom: w * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //!Skip
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(right: w * 0.03),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200],
                      ),
                      width: w * 0.2,
                      height: h * 0.06,
                      child: const Center(
                          child: Text(
                        'skip',
                        style: TextStyle(
                            color: CustomColor.txt_color,
                            fontFamily: Fonts.ROBOTO,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                  ),

                  //!Next
                  NeumorphicButton(
                    onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => GuideScreen5()));
                    },
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                        depth: 3,
                        lightSource: LightSource.topLeft,
                        color: CustomColor.bg_color),
                    child: Row(
                      children: [
                        const Text(
                          'Next',
                          style: TextStyle(
                              color: CustomColor.txt_color,
                              fontFamily: Fonts.ROBOTO,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: w * 0.03, height: h * 0.03),
                        RotatedBox(
                          quarterTurns: 2,
                          child: SvgPicture.asset(
                            ImageVectorConst.arrow_back_icon,
                            color: Colors.blueAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          

            ],
          ),
        ),
      ),
    );
  }
}