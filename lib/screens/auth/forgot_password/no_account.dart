import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/auth/register/index.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, RegisterScreen.routeName),
          child: Text(
            'Register',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: primaryAuthColor),
          ),
        )
      ],
    );
  }
}
