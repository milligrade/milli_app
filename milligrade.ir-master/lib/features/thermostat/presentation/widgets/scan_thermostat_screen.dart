import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/colors.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/thermostat_list_screen_widgets/list_view_item_widget.dart';
import '../../config/const/assets.dart';

class ScanThermostatScreen extends StatefulWidget {
  @override
  State<ScanThermostatScreen> createState() => _ScanThermostatScreenState();
}

class _ScanThermostatScreenState extends State<ScanThermostatScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: h * 0.03),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(color: CustomColor.txt_color),
              children: [
                const TextSpan(
                  text: "Press ",
                ),
                WidgetSpan(
                  child: SvgPicture.asset(ImageVectorConst.search_icon,
                      height: h * 0.02),
                ),
                const TextSpan(
                  text: " to find existing thermostat",
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: h * 0.01),
              height: h * 0.5,
              child: const ListeViewItemWidget()),
          const Text(
            'Can not find your termo? add new',
            style: TextStyle(color: CustomColor.txt_color),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          NeumorphicButton(
            margin: EdgeInsets.symmetric(
                vertical: h * 0.009, horizontal: w * 0.012),
            onPressed: () {},
            style: NeumorphicStyle(
                //shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(64)),
                depth: 8,
                lightSource: LightSource.topLeft,
                color: CustomColor.custom_blue3),
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.07, vertical: h * 0.035),

            // padding: EdgeInsets.symmetric(horizontal: w * 0.04 , vertical: h * 0.02),
            child: SvgPicture.asset(
              ImageVectorConst.add_icon,
              color: CustomColor.custom_white,
            ),
          ),
        ],
      ),
    );
  }
}
