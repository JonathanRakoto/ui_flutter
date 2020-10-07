import 'package:flutter/widgets.dart';
import 'package:ui_flutter/screens/auth/forgot_password/index.dart';
import 'package:ui_flutter/screens/auth/login/index.dart';
import 'package:ui_flutter/screens/auth/register/index.dart';
import 'package:ui_flutter/screens/clock/index.dart';
import 'package:ui_flutter/screens/movie/detail/index.dart';
import 'package:ui_flutter/screens/movie/home/index.dart';
import 'package:ui_flutter/screens/splash/index.dart';
import 'package:ui_flutter/screens/travelers/home/index.dart';
import 'package:ui_flutter/screens/travelers/travel/index.dart';
import 'package:ui_flutter/screens/wallet/index.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  TravelersScreen.routeName: (context) => TravelersScreen(),
  TravelScreen.routeName: (context) => TravelScreen(),
  WalletScreen.routeName: (context) => WalletScreen(),
  MovieScreen.routeName: (context) => MovieScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  ClockScreen.routeName: (context) => ClockScreen()
};
