import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/movie/argument.dart';
import 'package:ui_flutter/models/movie/movie.dart';
import 'package:ui_flutter/screens/movie/detail/index.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key key, this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(defaultPadding)),
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context, 
          DetailScreen.routeName,
          arguments: ScreenArguments(
            movie
          )
        ),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [defaultMovieShadow],
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(movie.poster))),
            )),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(defaultPadding / 2)),
              child: Text(movie.title,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star_fill.svg',
                  height: 20,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(defaultPadding / 2),
                ),
                Text('${movie.rating}',
                    style: Theme.of(context).textTheme.bodyText2)
              ],
            )
          ],
        ),
      ),
    );
  }
}
