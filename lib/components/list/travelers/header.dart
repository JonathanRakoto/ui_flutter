import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/constants/size.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    this.title,
    this.press
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(defaultPadding)),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
          ),
          Spacer(),
          GestureDetector(
            onTap: press,
            child: Text('See All')
          )
        ],
      ),
    );
  }
}