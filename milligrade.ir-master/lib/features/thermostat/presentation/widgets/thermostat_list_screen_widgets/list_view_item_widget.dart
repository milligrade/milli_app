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

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: w * 0.012, vertical: h * 0.02),
      itemCount: 10,
      itemBuilder: (context, index) {
        return NeumorphicButton(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15.0),
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            color: CustomColor.bg_color,
            //  CustomColor.bg_color,
            depth: 3,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
          ),
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            title: const Text('Kitchen',
                style: TextStyle(color: CustomColor.txt_color)),
            subtitle: const Text('Current Temp 25',
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
        );
      },
    );
  }
}
