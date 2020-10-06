import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';

// Authentification
const primaryAuthColor = Color(0xFFFF7643);
const primaryAuthLightColor = Color(0xFFFFECDF);
const primaryAuthGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const secondaryAuthColor = Color(0xFF979797);
const textAuthColor = Color(0xFF757575);

const animationAuthDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please Enter your email";
const String invalidEmailError = "Please Enter Valid Email";
const String passNullError = "Please Enter your password";
const String shortPassError = "Password is too short";
const String matchPassError = "Passwords don't match";
const String namelNullError = "Please Enter your name";
const String phoneNumberNullError = "Please Enter your phone number";
const String addressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: textAuthColor),
  );
}

// Travelers
const Color primaryColor = Color(0xFF3E4067);
const Color backgroundcolor = Color(0xFF4A4A58);
const Color textColor = Color(0xFF3F4168);
const Color iconColor = Color(0xFF5E5E5E);

final defaultShadow = BoxShadow(
  offset: Offset(5, 5),
  blurRadius: 10,
  color: Color(0xFFE9E9E9).withOpacity(0.56),
);

// Wallet
const Color walletColor = Color(0xFF26457A);
const List<Color> gradientCardColor = [Color(0xFFE6621C), Color(0xFFF1C40F)];
const Color positiveColor = Color(0xFF2ECC71);
const Color sendMoneyColor = Color(0xFF3498DB);

// Movie
const Color textMovieColor = Color(0xFF12153D);
const Color secondaryColor = Color(0xFFFE6D8E);
const Color textLightColor = Color(0xFF9A9BB2);
const Color fillStarColor = Color(0xFFCC419);

// Clock
const primaryClockColor = Color(0xFFFF97B3);
const secondaryClockLightColor = Color(0xFFE4E9F2);
const secondaryClockDarkColor = Color(0xFF404040);
const accentClockLightColor = Color(0xFFB3BFD7);
const accentClockDarkColor = Color(0xFF4E4E4E);
const backgroundClockDarkColor = Color(0xFF3A3A3A);
const surfaceClockDarkColor = Color(0xFF222225);
// Icon Colors
const accentIconClockLightColor = Color(0xFFECEFF5);
const accentIconClockDarkColor = Color(0xFF303030);
const primaryIconClockLightColor = Color(0xFFECEFF5);
const primaryIconClockDarkColor = Color(0xFF232323);
// Text Colors
const bodyTextClockColorLight = Color(0xFFA1B0CA);
const bodyTextClockColorDark = Color(0xFF7C7C7C);
const titleTextClockLightColor = Color(0xFF101112);
const titleTextClockDarkColor = Colors.white;

const shadowColor = Color(0xFF364564);

final defaultMovieShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black26,
);

const defaultPadding = 20.0;