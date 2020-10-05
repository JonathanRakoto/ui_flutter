import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_flutter/constants/styles.dart';

AppBar navbarHeader({
  bool isTransparent = false,
  String title, 
  Color backgroundColor,
  bool brightness = false,
  bool customLeadingIcon = false,
  bool customActionsIcon = false,
  SvgPicture leadingIcon,
  actionsIcon,
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
        icon: customLeadingIcon ? leadingIcon : Icon(Icons.menu),
        color: Theme.of(context).iconTheme.color,
        onPressed: () => Scaffold.of(context).openDrawer()
      ),
    ),
    actions: [
      customActionsIcon ? actionsIcon : 
      IconButton(
          icon: ClipOval(child: Image.asset('assets/images/profile.png')),
          onPressed: () {})
    ],
  );
}
