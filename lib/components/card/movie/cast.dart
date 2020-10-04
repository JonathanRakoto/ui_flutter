import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/styles.dart';

class CastingCard extends StatelessWidget {
  const CastingCard({Key key, this.cast}) : super(key: key);

  final Map cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast['image']
                )
              )
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          Text(
            cast['originalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2
          ),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(color: textLightColor)
          )
        ],
      ),
    );
  }
}
