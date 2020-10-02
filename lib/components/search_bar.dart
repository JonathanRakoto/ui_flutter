import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(313),
      height: getProportionateScreenWidth(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xFF3E4067)),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2
          )
        ]
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search destination...",
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: Color(0xFF464A7E)
          ),
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(defaultPadding),
            vertical:  getProportionateScreenHeight(defaultPadding / 2)
          )
        )
      )
    );
  }
}