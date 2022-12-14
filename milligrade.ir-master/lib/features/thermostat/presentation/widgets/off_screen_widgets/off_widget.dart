
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../config/const/colors.dart';
import '../../../config/const/fonts.dart';

class off_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: h * 0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: w * 0.65,
            height: h * 0.32,
            child: Neumorphic(
                style: NeumorphicStyle(
                    //shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(32)),
                    depth: 8,
                    //lightSource: LightSource.topLeft,
                    color: CustomColor.custom_white),
                child: const Center(
                  child: Text(
                    'Off',
                    style: TextStyle(
                        fontSize: 96,
                        fontFamily: Fonts.MiniSystem,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
