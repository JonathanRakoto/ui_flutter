import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'styles.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: primaryClockColor,
    accentColor: accentClockLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: secondaryClockLightColor,
      // on light theme surface = Colors.white by default
    ),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: bodyTextClockColorLight),
    accentIconTheme: IconThemeData(color: accentIconClockLightColor),
    primaryIconTheme: IconThemeData(color: primaryIconClockLightColor),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      bodyText1: TextStyle(color: textColor),
      bodyText2: TextStyle(color: textColor),
      headline4: TextStyle(color: titleTextClockLightColor, fontSize: 32),
      headline1: TextStyle(color: titleTextClockLightColor, fontSize: 80),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: primaryClockColor,
    accentColor: accentClockDarkColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: appBarTheme,
    colorScheme: ColorScheme.light(
      secondary: secondaryClockDarkColor,
      surface: surfaceClockDarkColor,
    ),
    backgroundColor: backgroundClockDarkColor,
    iconTheme: IconThemeData(color: bodyTextClockColorDark),
    accentIconTheme: IconThemeData(color: accentIconClockDarkColor),
    primaryIconTheme: IconThemeData(color: primaryIconClockDarkColor),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      bodyText1: TextStyle(color: bodyTextClockColorDark),
      bodyText2: TextStyle(color: bodyTextClockColorDark),
      headline4: TextStyle(color: titleTextClockDarkColor, fontSize: 32),
      headline1: TextStyle(color: titleTextClockDarkColor, fontSize: 80),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent, elevation: 0);
