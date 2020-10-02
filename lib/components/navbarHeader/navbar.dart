import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/styles.dart';

AppBar navbarHeader({
  bool isTransparent = false,
  String title, 
  Color backgroundColor,
  bool brightness = false,
}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : backgroundColor,
    brightness: brightness ? Brightness.dark : Brightness.light,
    elevation: 0,
    title: Text(isTransparent ? '' : title,
        style: TextStyle(
          color: brightness ? Colors.white : textColor, 
          fontWeight: FontWeight.bold
        )
      ),
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(Icons.menu),
        color: brightness ? Colors.white : iconColor,
        onPressed: () => Scaffold.of(context).openDrawer()
      ),
    ),
    actions: [
      IconButton(
          icon: ClipOval(child: Image.asset('assets/images/profile.png')),
          onPressed: () {})
    ],
  );
}
