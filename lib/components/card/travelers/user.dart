import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/models/User.dart';

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