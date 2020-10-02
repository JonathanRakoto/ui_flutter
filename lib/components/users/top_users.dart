import 'package:flutter/material.dart';
import 'package:ui_flutter/components/listCards/list_header.dart';
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

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
    this.user
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            height: getProportionateScreenWidth(55),
            width: getProportionateScreenWidth(55),
            fit: BoxFit.cover),
        ),
        VerticalSpacing(of: 10),
        Text(
          user.name,
          style: TextStyle(
            fontSize: 10, 
            fontWeight: FontWeight.w600
          )
        )
      ],
    );
  }
}