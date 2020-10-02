import 'package:flutter/material.dart';
import 'package:ui_flutter/components/navbarBottom/navbar_wallet.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/components/navbarHeader/navbar.dart';
import 'package:ui_flutter/components/drawer_menu.dart';
import 'body.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navbarHeader(
        title: 'My Cards',
        backgroundColor: walletColor,
        brightness: true
      ),
      drawer: DrawerMenu(),
      body: BodyWallet(),
      bottomNavigationBar: NavbarWallet(),
    );
  }
}
