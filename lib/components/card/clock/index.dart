import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_flutter/constants/size.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key key,
    @required this.time,
    @required this.timeOfDay, 
    @required this.country, 
    @required this.timeZone,
    @required this.iconSrc,
  }) : super(key: key);

  final String country, timeZone, time, iconSrc;
  final ValueNotifier<TimeOfDay> timeOfDay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(233),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Theme.of(context).primaryIconTheme.color)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(country,
                      style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: getProportionateScreenWidth(16))),
                  SizedBox(height: 5),
                  Text(timeZone),
                  Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        iconSrc,
                        width: getProportionateScreenWidth(40),
                        color: Theme.of(context).accentIconTheme.color
                      ),
                      Spacer(),
                      Text(time,
                        style: Theme.of(context).textTheme.headline4
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
