import 'package:flutter/material.dart';
import 'package:ui_flutter/components/button/auth/button.dart';
import 'package:ui_flutter/components/form/field/email.dart';
import 'package:ui_flutter/components/form/field/password.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/screens/auth/forgot_password/index.dart';
import 'package:ui_flutter/screens/travelers/home/index.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  String errorEmail = '';
  String errorPassword = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(
              error: errorEmail,
              setErrorState: (value) => setState(() => errorEmail = value),
              onSaved: (value) => email = value),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(
              error: errorPassword,
              setErrorState: (value) => setState(() => errorPassword = value),
              onSaved: (value) => password = value),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: primaryAuthColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text('Remember Me'),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text('Forgot password',
                    style: TextStyle(decoration: TextDecoration.underline)),
              )
            ],
          ),
          // FormErrors(errors: errors),
          SizedBox(height: getProportionateScreenWidth(20)),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState.validate())
                _formKey.currentState.save();
              Navigator.pushNamed(context, TravelersScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
