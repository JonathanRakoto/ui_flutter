import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/components/search_bar.dart';

class TravelerHeader extends StatelessWidget {
  const TravelerHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/home.png',
          height: getProportionateScreenWidth(315),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(80)),
            Text('Travelers',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(73),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 0.5)),
            Text('Travel Organizer App',
                style: TextStyle(color: Colors.white))
          ],
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: SearchBar(),
        )
      ],
    );
  }
}