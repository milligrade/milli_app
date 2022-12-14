import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/const/assets.dart';
import '../../config/const/colors.dart';
import 'list_view_item_widget.dart';

class ThermostatListScreen extends StatefulWidget {
  const ThermostatListScreen({super.key});

  @override
  State<ThermostatListScreen> createState() => _ThermostatListScreenState();
}

class _ThermostatListScreenState extends State<ThermostatListScreen> {
  @override
  Widget build(BuildContext context) {
    return const ListeViewItemWidget();
  }
}
