import 'package:flutter/material.dart';
import 'package:ui_flutter/components/drawer_menu.dart';
import 'package:ui_flutter/components/navbarBottom/navbar.dart';
import 'package:ui_flutter/components/navbarHeader/navbar.dart';
import 'package:ui_flutter/constants/size.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
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
