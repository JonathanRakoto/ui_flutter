import 'package:flutter/material.dart';
import 'package:ui_flutter/components/navbarBottom/navbar.dart';
import 'package:ui_flutter/components/drawer_menu.dart';
import 'package:ui_flutter/components/navbarHeader/navbar.dart';
import 'body.dart';

class TravelScreen extends StatelessWidget {
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