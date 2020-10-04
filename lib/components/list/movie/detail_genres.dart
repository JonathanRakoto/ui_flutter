import 'package:flutter/material.dart';
import 'package:ui_flutter/components/card/movie/genre.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/movie.dart';

class ListDetailGenres extends StatelessWidget {
  const ListDetailGenres({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(defaultPadding / 2),
          ),
          child: SizedBox(
            height: 36,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.genra.length,
              itemBuilder: (context, index) => GenreMovie(
                genre: movie.genra[index],
              )
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(defaultPadding),
            vertical: getProportionateScreenWidth(defaultPadding / 2)),
          child: Text('Plot Summary',
            style: Theme.of(context).textTheme.headline6),
          ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(defaultPadding)),
          child: Text(movie.plot,
            style: TextStyle(
              color: Color(0xFF737599),
            )
          ),
        ),
      ],
    );
  }
}