import 'package:flutter/material.dart';
import 'package:ui_flutter/components/card/movie/genre.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class ListGenres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animation'
    ];
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(defaultPadding / 2)
      ),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreMovie(genre: genres[index])
        ),
    );
  }
}