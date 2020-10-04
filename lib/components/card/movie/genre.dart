import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class GenreMovie extends StatelessWidget {
  const GenreMovie({Key key, this.genre}) : super(key: key);

  final String genre;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: getProportionateScreenWidth(defaultPadding)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(defaultPadding),
        vertical: getProportionateScreenWidth(defaultPadding / 4)
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: textColor.withOpacity(0.8),
          fontSize: 14
        )
      ),
    );
  }
}
