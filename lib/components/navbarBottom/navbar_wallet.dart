import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_flutter/constants/styles.dart';

class NavbarWallet extends StatelessWidget {
  const NavbarWallet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: walletColor,
      unselectedItemColor: Colors.white,
      currentIndex: 0,
      onTap: (index) {},
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.wallet),
          title: Text('Wallet')
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.search),
          title: Text('Search')
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.ticketAlt),
          title: Text('Coupans')
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.userAlt),
          title: Text('Account')
        ),
      ],
    );
  }
}