import 'package:flutter/material.dart';
import 'package:ui_flutter/models/movie.dart';
import 'package:ui_flutter/screens/movie/detail/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key, this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetail(movie: movie),
    );
  }
}
