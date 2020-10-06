import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(56),
      child: FlatButton(
          color: primaryAuthColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: press,
          child: Container(
            child: Text(text,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.white)),
          )),
    );
  }
}
