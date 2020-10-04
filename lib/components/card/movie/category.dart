import 'package:flutter/material.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

Padding categoryItem({ 
  int index, 
  BuildContext context, 
  selectedCategory,  
  List<String> categories
  }) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: getProportionateScreenWidth(defaultPadding)),
    child: GestureDetector(
      onTap: () => { selectedCategory.value = index },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: Theme.of(context).textTheme.headline5.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: index == selectedCategory.value
                ? textMovieColor
                : Colors.black.withOpacity(0.4))
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: defaultPadding / 2.5),
            height: 6,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index == selectedCategory.value
                ? secondaryColor
                : Colors.transparent,
            ),
          )
        ],
      ),
    ),
  );
}