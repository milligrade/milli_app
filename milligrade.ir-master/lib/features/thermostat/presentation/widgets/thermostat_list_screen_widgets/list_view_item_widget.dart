import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';

class ListeViewItemWidget extends StatelessWidget {
  const ListeViewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: h * 0.03 , right: w * 0.015 , left: w * 0.015),
      child: Column(
            children: [
              NeumorphicButton(
                margin: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.04),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  color: CustomColor.bg_main_color,
                  //  CustomColor.bg_color,
                  depth: 3,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                ),
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text('Kitchen',
                      style: TextStyle(color: CustomColor.txt_color)),
                  subtitle: const Text('Current Temp 23.5',
                      style: TextStyle(color: CustomColor.txt_color)),
                  leading: const Text('25',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                  trailing: Wrap(
                    children: [
                      SvgPicture.asset(ImageVectorConst.lock_icon),
                      SizedBox(
                        width: 0.03 * w,
                      ),
                      SvgPicture.asset(ImageVectorConst.heat_icon),
                    ],
                  ),
                ),
                onPressed: () {},
              ),
            
              NeumorphicButton(
                margin: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.04),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  color: CustomColor.bg_color,
                  //  CustomColor.bg_color,
                  depth: 3,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                ),
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text('BedRoom',
                      style: TextStyle(color: CustomColor.txt_color)),
                  subtitle: const Text('Current Temp 21.5',
                      style: TextStyle(color: CustomColor.txt_color)),
                  leading: const Text('28',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                  trailing: 
                      SvgPicture.asset(ImageVectorConst.cool_icon),
                ),
                onPressed: () {},
              ),
            
              NeumorphicButton(
                margin: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.04),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  color: CustomColor.bg_color,
                  //  CustomColor.bg_color,
                  depth: -1.5,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                ),
                padding: const EdgeInsets.all(4.0),
                child: const ListTile(
                  title: Text('Living Room',
                      style: TextStyle(color: CustomColor.txt_color)),
                  subtitle: Text('Current Temp 45',
                      style: TextStyle(color: CustomColor.txt_color)),
                  leading: Text('30',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: CustomColor.txt_color,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                  trailing: 
                      Icon(Icons.wifi_off),
                ),
                onPressed: () {},
              ),
            ]
            
      ),
    );
  }
}
