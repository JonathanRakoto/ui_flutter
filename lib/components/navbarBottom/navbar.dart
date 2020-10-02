import 'package:flutter/material.dart';
import 'package:ui_flutter/components/navbarBottom/navbar_item.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/screens/travel/index.dart';

class NavbarBottom extends StatelessWidget {
  const NavbarBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(defaultPadding)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarItem(
                  title: 'Travels',
                  icon: 'assets/icons/calendar.svg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TravelScreen()
                      )
                    );
                  }),
              NavBarItem(
                  title: 'Chat', icon: 'assets/icons/chat.svg', press: () {}),
              NavBarItem(
                  title: 'Friendship',
                  icon: 'assets/icons/friendship.svg',
                  press: () {}
              )
            ],
          ),
        ),
      ),
    );
  }
}
