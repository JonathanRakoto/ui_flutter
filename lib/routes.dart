import 'package:flutter/widgets.dart';
import 'package:ui_flutter/screens/auth/forgot_password/index.dart';
import 'package:ui_flutter/screens/auth/login/index.dart';
import 'package:ui_flutter/screens/splash/index.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
