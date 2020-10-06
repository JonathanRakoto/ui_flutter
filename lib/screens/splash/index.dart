import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/splash/body.dart';
import 'package:ui_flutter/constants/size.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(body: BodySplash());
  }
}
