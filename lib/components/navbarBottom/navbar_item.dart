import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    Key key,
    this.icon,
    this.title,
    this.isActive = false,
    this.press
  }) : super(key: key);

  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) defaultShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 24,
              color: textColor,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 8.55, 
                fontWeight: FontWeight.bold
              )
            )
          ],
        ),
      ),
    );
  }
}