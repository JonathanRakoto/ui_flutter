import 'package:flutter/material.dart';
import 'package:ui_flutter/components/listCards/list_header.dart';
import 'package:ui_flutter/components/card/card_travelers.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/models/TravelSpot.dart';

class ListCards extends StatelessWidget {
  const ListCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Right Now At Spark',
          press: () {},
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: PlaceCard(spot: travelSpots[index], press: () {}),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
