import 'package:flutter/material.dart';
import 'package:ui_flutter/components/form/auth/register.dart';
import 'package:ui_flutter/components/form/auth/social.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class BodyRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              Text(
                'Register Account',
                style: headingStyle
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              RegisterForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialAuth(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialAuth(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialAuth(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                'By continuing you confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}