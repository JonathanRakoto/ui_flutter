import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_flutter/components/common/navbar.dart';
import 'package:ui_flutter/components/drawer_menu.dart';
import 'home/../body.dart';

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navbarHeader(
          backgroundColor: Colors.white,
          customIcon: true,
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          title: 'Movie App'),
      drawer: DrawerMenu(),
      body: BodyMovie()
    );
  }
}
