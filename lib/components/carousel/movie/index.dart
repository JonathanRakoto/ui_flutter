import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/movie/movie.dart';
import 'card_slider.dart';

class MovieCarousel extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final initialPage = useState(1);
    final PageController pageController =
      PageController(viewportFraction: 0.8, initialPage: initialPage.value);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(defaultPadding)),
      child: AspectRatio(
        aspectRatio: 0.90,
        child: PageView.builder(
            onPageChanged: (value) {
              initialPage.value = value;
            },
            controller: pageController,
            physics: ClampingScrollPhysics(),
            itemCount: movies.length,
            itemBuilder: (context, index) =>
                buildMovieCardSlider(
                  index, 
                  initialPage.value, 
                  pageController, 
                  movies)
                ),
      ),
    );
  }
}
