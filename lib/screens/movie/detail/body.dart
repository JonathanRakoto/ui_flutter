import 'package:flutter/material.dart';
import 'package:ui_flutter/components/detail/movie/header.dart';
import 'package:ui_flutter/components/detail/movie/info.dart';
import 'package:ui_flutter/components/list/movie/casting_crew.dart';
import 'package:ui_flutter/components/list/movie/detail_genres.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/movie/movie.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({Key key, this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          DetailHeaderMovie(size: size, movie: movie),
          SizedBox(height: defaultPadding / 2),
          DetailInfoMovie(movie: movie),
          ListDetailGenres(movie: movie),
          CastingAndCrew(casts: movie.cast)
        ],
      ),
    );
  }
}
