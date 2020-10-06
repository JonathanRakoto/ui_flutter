import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/styles.dart';

class SplashDot extends StatelessWidget {
  const SplashDot({Key key, this.index, this.currentPage}) : super(key: key);

  final int index;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: animationAuthDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? primaryAuthColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}