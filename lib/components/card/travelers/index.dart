import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_flutter/components/card/travelers/image.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/TravelSpot.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    this.spot,
    this.press,
    this.isFullCard = false
  }) : super(key: key);

  final TravelSpot spot;
  final GestureTapCallback press;
  final bool isFullCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
                image: DecorationImage(
                  image: AssetImage(
                    spot.image,
                  ),
                  fit: BoxFit.cover
                )
              ),
            )
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(defaultPadding)
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
              boxShadow: [defaultShadow]
            ),
            child: Column(
              children: [
                Text(
                  spot.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isFullCard ? 17 : 11, 
                      fontWeight: FontWeight.w600
                    )
                  ),
                  if (isFullCard)
                    Text(
                    spot.date.day.toString(),
                    style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(
                        fontWeight: FontWeight.bold
                      )
                  ),
                  Text(
                    DateFormat.MMMM().format(spot.date).toString() +
                    ' ' + spot.date.year.toString(),
                    style: TextStyle(
                      fontSize: isFullCard ? 15 : 11,
                    )
                  ),
                  VerticalSpacing(of: 10),
                  Travelers(users: spot.users)
                ],
              )
          )
        ])
    );
  }
}