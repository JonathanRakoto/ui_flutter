import 'package:flutter/material.dart';
import 'package:ui_flutter/components/card/movie/index.dart';
import 'package:ui_flutter/models/movie/movie.dart';
import 'dart:math' as math;

Widget buildMovieCardSlider(
  int index,
  initialPage, 
  PageController pageController, 
  List<Movie> movies
  ) => 
  AnimatedBuilder(
    animation: pageController,
    builder: (context, child) {
      double value = 0;
      if (pageController.position.haveDimensions) {
        value = index - pageController.page;
        value = (value * 0.038).clamp(-1, 1);
      }
      return AnimatedOpacity(
        duration: Duration(milliseconds: 350),
        opacity: initialPage.toDouble() == index ? 1 : 0.4,
        child: Transform.rotate(
          angle: math.pi * value,
          child: MovieCard(movie: movies[index]),
        ),
      );
    }
  );