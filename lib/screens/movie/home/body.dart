import 'package:flutter/material.dart';
import 'package:ui_flutter/components/carousel/movie/index.dart';
import 'package:ui_flutter/components/list/movie/categories.dart';
import 'package:ui_flutter/components/list/movie/genres.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class BodyMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListCategories(),
          ListGenres(),
          SizedBox(height: getProportionateScreenWidth(defaultPadding / 5)),
          MovieCarousel()
        ],
      ),
    );
  }
}