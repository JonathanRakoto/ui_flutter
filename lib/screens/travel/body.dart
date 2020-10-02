import 'package:flutter/material.dart';
import 'package:ui_flutter/components/card/card_travelers.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/TravelSpot.dart';

class BodyTravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25)
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 25),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 20,
            children: [
              ...List.generate(
                travelSpots.length, 
                (index) => PlaceCard(
                  spot: travelSpots[index],
                  isFullCard: true,
                  press: () {},
                )
              ),
              Container(
                height: getProportionateScreenWidth(350),
                width: getProportionateScreenWidth(158),
                decoration: BoxDecoration(
                  color: Color(0xFF6A6C93).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Color(0xFFEBE8F6))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getProportionateScreenWidth(53),
                      width: getProportionateScreenWidth(53),
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)
                        ),
                        color: primaryColor,
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: getProportionateScreenWidth(35)
                        ),
                      )
                    ),
                    VerticalSpacing(of: 10),
                    Text(
                      'Add New Place',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}