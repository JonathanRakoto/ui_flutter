import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class CardWallet extends StatelessWidget {
  const CardWallet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(defaultPadding),
            vertical: getProportionateScreenWidth(defaultPadding / 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )
              ),
              Text(
                'USD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(defaultPadding),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$16,648',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                )
              ),
              Container(
                decoration: BoxDecoration(
                  color: positiveColor,
                  borderRadius: BorderRadius.circular(16)
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(defaultPadding / 2.5),
                  vertical: getProportionateScreenWidth(defaultPadding / 10)
                ),
                child: Text(
                  '+ 3.5 %',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 80),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(defaultPadding),
            vertical: getProportionateScreenWidth(defaultPadding / 2)
          ),
          child: Row(
            children: [
              Text(
                '\$1.234415 BTC',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )
              )
            ],
          )
        )
      ],
    ),
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(defaultPadding),
        vertical: getProportionateScreenWidth(defaultPadding * 2)
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(colors: gradientCardColor)
      ),
    );
  }
}