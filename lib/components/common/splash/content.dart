import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Text(
        'UI Flutter Library',
        style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: primaryAuthColor,
            fontWeight: FontWeight.bold),
      ),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
      Spacer(flex: 2),
      Image.asset(
        image,
        height: getProportionateScreenWidth(265),
        width: getProportionateScreenWidth(235),
      )
    ]);
  }
}