
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/const/assets.dart';
import '../../../config/const/colors.dart';

class DrawerLayoutWidget extends StatelessWidget {
  const DrawerLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    
    return Container(
          width: w / 1.25,
          child: Drawer(
            child: Column(
              children: [
                DrawerHeader(
                  child: Container(
                      height: h * 0.07,
                      width: w * 0.5,
                      //color: Colors.yellow,
                      child: Image.asset(
                        ImageVectorConst.thermostat_logo_img,
                        height: h * 0.05,
                        width: w * 0.05,
                      )),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.28, left: w * 0.05),
                  child: Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(ImageVectorConst.user_icon),
                        title: const Text(
                          'User Account',
                          style: TextStyle(
                              color: CustomColor.txt_connect_to_wifi_color,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                            ImageVectorConst.thermostatList_icon),
                        title: const Text(
                          'Thermostat List',
                          style: TextStyle(
                              color: CustomColor.txt_connect_to_wifi_color,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () => Navigator.of(context).pushNamed('/scan'),
                      ),
                      ListTile(
                        leading:
                            SvgPicture.asset(ImageVectorConst.add_remove_icon),
                        title: const Text(
                          'Add or remove termostats',
                          style: TextStyle(
                              color: CustomColor.txt_connect_to_wifi_color,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: w * 0.05, bottom: h * 0.05),
                    child: ListTile(
                      leading: SvgPicture.asset(ImageVectorConst.info_icon),
                      title: const Text(
                        'Info',
                        style: TextStyle(
                            color: CustomColor.txt_connect_to_wifi_color,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      onTap: () {},
                    ),
                  ),
                ))
              ],
            ),
          ),
        );
  }
}