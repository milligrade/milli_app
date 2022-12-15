import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';
import '../../../config/const/strings.dart';

class GuideScreen5 extends StatelessWidget {
  const GuideScreen5({super.key});

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
                padding: EdgeInsets.only(top: h * 0.05, bottom: w * 0.08),
                child: Image.asset(ImageVectorConst.thermostat_setting5_img,
                    width: w * 0.7),
              ),
              Column(
                children: [
                  const Text(
                    CustomString.wifi_setting5_1,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: CustomColor.txt_wifi_color),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: h * 0.04),
                    child: RichText(
                      text: const TextSpan(
                        text: CustomString.wifi_setting5_2,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w800,
                            color: CustomColor.txt_wifi_color),
                        children: [
                          TextSpan(
                              text: CustomString.wifi_setting5_2_2,
                              style: TextStyle(
                                color: Colors.blueAccent,
                                decoration: TextDecoration.underline,
                              )),
                          TextSpan(
                              text: '2  Connect to "',
                              style:
                                  TextStyle(color: CustomColor.txt_wifi_color)),
                          TextSpan(
                              text: 'MilliGrade_XXXXXX',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '" wifi\n',
                              style:
                                  TextStyle(color: CustomColor.txt_wifi_color)),
                          TextSpan(
                              text: CustomString.wifi_setting5_4,
                              style:
                                  TextStyle(color: CustomColor.txt_wifi_color)),
                          TextSpan(
                              text: CustomString.wifi_setting5_5,
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: CustomString.wifi_setting5_6,
                              style:
                                  TextStyle(color: CustomColor.txt_wifi_color)),
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(height: h * 0.05,),
                ],
              )
            ],
          ),
        ),
      ),


      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(left: w * 0.02, right: w * 0.02, bottom: w * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //!Skip
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/page4');
              },
              child: Container(
                padding: EdgeInsets.only(right: w * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                ),
                width: w * 0.2,
                height: h * 0.06,
                child: Center(child: Text('Back')),
              ),
            ),

            //!Next
            NeumorphicButton(
              //margin: EdgeInsets.symmetric(vertical: h * 0.05, horizontal: w * 0.35),
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/wifi'),
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: CustomColor.bg_color),

              //padding: EdgeInsets.symmetric(horizontal: w * 0.05 , vertical: h * 0.02),

              // padding: EdgeInsets.symmetric(horizontal: w * 0.04 , vertical: h * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Next'),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
   
    );
  }
}