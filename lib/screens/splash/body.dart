import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ui_flutter/components/button/auth/button.dart';
import 'package:ui_flutter/components/common/splash/dot.dart';
import 'package:ui_flutter/components/common/splash/content.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/screens/auth/login/index.dart';

class BodySplash extends HookWidget {
  final List<Map<String, String>> splashdata = [
    {
      'text': 'Welcome in UI Flutter, let\'s begin',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'You can find a lot of different UI for yours projects',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'Pick components as mush as you want, it\'s free !',
      'image': 'assets/images/splash_3.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final currentPage = useState(0);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      currentPage.value = value;
                    },
                    itemCount: splashdata.length,
                    itemBuilder: (context, index) => SplashContent(
                        text: splashdata[index]['text'],
                        image: splashdata[index]['image']))),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashdata.length,
                        (index) => SplashDot(
                            index: index, currentPage: currentPage.value),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: 'Skip',
                      press: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
