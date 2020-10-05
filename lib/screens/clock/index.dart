import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_flutter/components/button/clock/add.dart';
import 'package:ui_flutter/components/common/drawer_menu.dart';
import 'package:ui_flutter/components/common/navbar.dart';
import 'package:ui_flutter/constants/size.dart';

import 'body.dart';

class ClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: navbarHeader(
          isTransparent: true,
          customLeadingIcon: true,
          leadingIcon: SvgPicture.asset('assets/icons/Settings.svg'),
          customActionsIcon: true,
          actionsIcon: AddButton()),
      drawer: DrawerMenu(),
      body: BodyClock(),
    );
  }
}
