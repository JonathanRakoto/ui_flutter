import 'package:flutter/material.dart';
import 'package:ui_flutter/components/common/drawer_menu.dart';
import 'package:ui_flutter/components/navbarBottom/travelers/index.dart';
import 'package:ui_flutter/components/common/navbar.dart';
import 'package:ui_flutter/constants/size.dart';
import 'body.dart';

class TravelersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: navbarHeader(
        isTransparent: true
      ),
      drawer: DrawerMenu(),
      body: BodyHome(),
      bottomNavigationBar: NavbarBottom(),
    );
  }
}
