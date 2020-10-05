import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_flutter/constants/theme.dart';
import 'package:ui_flutter/models/my_theme_provider.dart';
import 'package:ui_flutter/screens/travelers/home/index.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Travels App',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          home: TravelersScreen(),
        )
      )
    );
  }
}