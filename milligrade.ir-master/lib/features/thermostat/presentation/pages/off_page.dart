import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/colors.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/off_screen.dart';

import '../../config/const/assets.dart';

class OffPage extends StatelessWidget {
  const OffPage({super.key});

  @override
  Widget build(BuildContext context) {
     var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    
    return Scaffold(
       appBar:AppBar(
            //key: scaffoldKey,
            elevation: 0,
            actions: [
              NeumorphicButton(
                  margin: EdgeInsets.only(
                      right: w * 0.03, top: h * 0.005, bottom: h * 0.005),
                  padding: EdgeInsets.only(
                      right: w * 0.03,
                      left: w * 0.03,
                      top: h * 0.005,
                      bottom: h * 0.005),
                      onPressed: () {
                        
                      },
                  style: NeumorphicStyle(
                    color: CustomColor.bg_main_color,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                  ),
                  child: SvgPicture.asset(ImageVectorConst.three_dot_icon)
                  //  SvgPicture.asset(
                  //   ImageVectorConst.three_dot_icon,
                  // )
                  )
            ],
            leading: NeumorphicButton(
                margin: EdgeInsets.only(
                    left: w * 0.03, top: h * 0.005, bottom: h * 0.005),

                  onPressed: () {
                    
                  },  
                style: NeumorphicStyle(
                  color: CustomColor.bg_main_color,
                  
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                ),
                child: SvgPicture.asset(ImageVectorConst.arrow_back_icon))),
       body: const OffScreen(),
    );
  }
}