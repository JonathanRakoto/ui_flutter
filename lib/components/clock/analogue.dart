import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:ui_flutter/components/clock/painter.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/models/my_theme_provider.dart';

class AnalogueClock extends HookWidget {
  final DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final dateTime = useState(_dateTime);
    Timer.periodic(Duration(seconds: 1), (timer) {
      dateTime.value = DateTime.now();
    });
    return Stack(
      children: [
        Container(
          width: getProportionateScreenWidth(MediaQuery.of(context).size.width),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(20)),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: getProportionateScreenWidth(20),
                width: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          color: shadowColor.withOpacity(0.14),
                          blurRadius: 64)
                    ]),
                child: Transform.rotate(
                    angle: -pi / 2,
                    child: CustomPaint(
                        painter: ClockPainter(context, dateTime.value))),
              ),
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Consumer<MyThemeModel>(
              builder: (context, theme, child) => GestureDetector(
                onTap: () => theme.changeTheme(),
                  child: SvgPicture.asset(
                    theme.isLightTheme
                    ? 'assets/icons/Sun.svg'
                    : 'assets/icons/Moon.svg',
                    height: 24,
                    width: 24,
                    color: Theme.of(context).primaryColor),
                  )
              )
            )
      ],
    );
  }
}
