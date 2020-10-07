import 'package:flutter/material.dart';
import 'package:ui_flutter/components/navbarBottom/travelers/index.dart';
import 'package:ui_flutter/components/common/drawer_menu.dart';
import 'package:ui_flutter/components/common/navbar.dart';
import 'body.dart';

class TravelScreen extends StatelessWidget {
  static String routeName = '/travelers/travel';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navbarHeader(
        title: 'New Travels',
        backgroundColor: Colors.white
      ),
      drawer: DrawerMenu(),
      body: BodyTravel(),
      bottomNavigationBar: NavbarBottom(),
    );
  }
}