import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_flutter/constants/theme.dart';
import 'package:ui_flutter/models/theme.dart';
import 'package:ui_flutter/routes.dart';
import 'package:ui_flutter/screens/splash/index.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'UI Flutter Library',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          initialRoute: SplashScreen.routeName,
          routes: routes,
        )
      )
    );
  }
}