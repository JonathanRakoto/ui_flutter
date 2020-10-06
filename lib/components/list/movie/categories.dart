import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ui_flutter/components/card/movie/category.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class ListCategories extends HookWidget {
  final List<String> categories = ['In Theater', 'Box Office', 'Coming Soon'];
  @override
  Widget build(BuildContext context) {
    final selectedCategory = useState(0);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(defaultPadding / 2)
      ),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => categoryItem(
          index: index,
          selectedCategory: selectedCategory,
          context: context,
          categories: categories
        ),
      ),
    );
  }
}