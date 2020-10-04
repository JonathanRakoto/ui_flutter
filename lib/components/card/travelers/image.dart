import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/TravelSpot.dart';
import 'package:ui_flutter/models/User.dart';

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
    this.users
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(users.length, (index) {
            totalUser++;
            return Positioned(
              left: (21 * index).toDouble(),
              child: buildTraveler(index),
            );
          }),
          Positioned(
            left: (21 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              child: FlatButton(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: primaryColor,
                  onPressed: () {},
                  child: Icon(Icons.add, color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTraveler(int index) {
    return ClipOval(
      child: Image.asset(travelSpots[0].users[index].image,
          height: getProportionateScreenWidth(28),
          width: getProportionateScreenWidth(28),
          fit: BoxFit.cover),
    );
  }
}
