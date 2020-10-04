import 'package:flutter/material.dart';
import 'package:ui_flutter/components/card/movie/cast.dart';
import 'package:ui_flutter/constants/styles.dart';

class CastingAndCrew extends StatelessWidget {
  const CastingAndCrew({
    Key key,
    this.casts
  }) : super(key: key);

  final List casts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cast & Crew', style: Theme.of(context).textTheme.headline6),
          SizedBox(height: defaultPadding / 2),
          SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: casts.length,
                itemBuilder: (context, index) => CastingCard(
                  cast: casts[index]
                ),
              ))
        ],
      ),
    );
  }
}