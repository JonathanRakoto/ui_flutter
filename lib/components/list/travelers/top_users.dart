import 'package:flutter/material.dart';
import 'package:ui_flutter/components/card/travelers/user.dart';
import 'package:ui_flutter/components/list/travelers/header.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/User.dart';

class TopUsers extends StatelessWidget {
  const TopUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Travelers on Spark', press: () {}),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(defaultPadding)),
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          decoration: BoxDecoration(
            color: Colors.white, boxShadow: [defaultShadow]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length, 
                (index) => UserCard(user: topTravelers[index]),
              )
            ],
          )
        ),
      ],
    );
  }
}