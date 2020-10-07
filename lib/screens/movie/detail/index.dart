import 'package:flutter/material.dart';
import 'package:ui_flutter/models/movie/argument.dart';
import 'package:ui_flutter/models/movie/movie.dart';
import 'package:ui_flutter/screens/movie/detail/body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/movie/detail';
  const DetailScreen({Key key, this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: BodyDetail(movie: args.movie),
    );
  }
}
