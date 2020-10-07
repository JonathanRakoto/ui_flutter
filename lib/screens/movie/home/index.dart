import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_flutter/components/common/navbar.dart';
import 'package:ui_flutter/components/common/drawer_menu.dart';
import 'package:ui_flutter/constants/size.dart';
import 'home/../body.dart';

class MovieScreen extends StatelessWidget {
  static String routeName = '/movie';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: navbarHeader(
          backgroundColor: Colors.white,
          customLeadingIcon: true,
          leadingIcon: SvgPicture.asset('assets/icons/menu.svg'),
          title: 'Movie App'),
      drawer: DrawerMenu(),
      body: BodyMovie()
    );
  }
}
