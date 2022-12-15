import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milligrade_flutter/features/thermostat/config/const/assets.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/home_screen_widgets/drawer_layout_widget.dart';
import 'package:milligrade_flutter/features/thermostat/presentation/widgets/scan_thermostat_screen.dart';
import '../../config/const/colors.dart';

class ScanThermostatPage extends StatelessWidget {
  const ScanThermostatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      
        appBar: AppBar(
          leading: Builder(
              builder: (context) => IconButton(
                    padding: EdgeInsets.only(
                      left: w * 0.06,
                    ),
                    icon: NeumorphicButton(
                        padding: EdgeInsets.only(
                            left: w * 0.01,
                            right: w * 0.01,
                            top: h * 0.01,
                            bottom: h * 0.01),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                        style: NeumorphicStyle(
                          color: CustomColor.bg_main_color,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                        ),
                        child: SvgPicture.asset(ImageVectorConst.menu_icon)),
                    onPressed: () => print('drawer opened'),
                  )),
          title: Padding(
              padding: EdgeInsets.only(left: w * 0.05),
              child: const Text(
                "Thermostat list",
                style: TextStyle(color: CustomColor.txt_color),
              )),
          elevation: 0,
        ),
        
        body: ScanThermostatScreen(),
        
        drawer: const DrawerLayoutWidget(),
        
        floatingActionButton: NeumorphicButton(
          margin:
              EdgeInsets.symmetric(vertical: h * 0.009, horizontal: w * 0.012),
          onPressed: () {},
          style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(64)),
              depth: 8,
              lightSource: LightSource.topLeft,
              color: CustomColor.bg_color),
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.02),

          // padding: EdgeInsets.symmetric(horizontal: w * 0.04 , vertical: h * 0.02),
          child: SvgPicture.asset(ImageVectorConst.search_icon),
        ));
  }
}
