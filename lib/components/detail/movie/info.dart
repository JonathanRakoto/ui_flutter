import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/movie/movie.dart';

class DetailInfoMovie extends StatelessWidget {
  const DetailInfoMovie({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(defaultPadding)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5
                ),
                SizedBox(height: defaultPadding / 2),
                Row(
                  children: [
                    Text(
                      '${movie.year}',
                      style: TextStyle(
                        color: textLightColor
                      ),
                    ),
                    SizedBox(width: getProportionateScreenWidth(defaultPadding)),
                    Text(
                      'PG-13',
                      style: TextStyle(color: textLightColor)
                    ),
                    SizedBox(width: getProportionateScreenWidth(defaultPadding)),
                    Text(
                      '2h 32min',
                      style: TextStyle(color: textLightColor)
                    )
                  ],
                )
              ],
            )
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              onPressed: () {}, 
            )
          )
        ],
      ),
    );
  }
}