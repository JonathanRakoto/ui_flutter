import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_flutter/components/button/auth/button.dart';
import 'package:ui_flutter/constants/errors.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';
import 'package:ui_flutter/screens/auth/forgot_password/index.dart';

import '../icons/suffix.dart';

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
          buildEmailFormField(errorEmail),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(errorPassword),
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
                onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
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
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField(error) {
    return TextFormField(
      obscureText: true,
      onSaved: (value) => password = value,
      onChanged: (value) {
        if (value.isEmpty)
          setState(() {
            errorPassword = passNullError;
          });
        else if (value.isNotEmpty && value.length < 6)
          setState(() {
            errorPassword = shortPassError;
          });
        else
          setState(() {
            errorPassword = '';
          });
        return null;
      },
      validator: (value) {
        if (value.isEmpty)
          setState(() {
            errorPassword = passNullError;
          });
        else if (value.length < 6)
          setState(() {
            errorPassword = shortPassError;
          });
        return null;
      },
      decoration: InputDecoration(
          labelText: error.isNotEmpty ? error : 'Password',
          hintText: 'Enter your password',
          suffixIcon: SuffixIconForm(
              svgIcon: error.isNotEmpty
                  ? 'assets/icons/Error.svg'
                  : 'assets/icons/Lock.svg')),
    );
  }

  TextFormField buildEmailFormField(error) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => email = value,
      onChanged: (value) {
        if (value.isEmpty)
          setState(() {
            errorEmail = emailNullError;
          });
        else if (value.isNotEmpty && !emailValidatorRegExp.hasMatch(value))
          setState(() {
            errorEmail = invalidEmailError;
          });
        else
          setState(() {
            errorEmail = '';
          });
        return null;
      },
      validator: (value) {
        if (value.isEmpty)
          setState(() {
            errorEmail = emailNullError;
          });
        else if (!emailValidatorRegExp.hasMatch(value))
          setState(() {
            errorEmail = invalidEmailError;
          });
        return null;
      },
      decoration: InputDecoration(
          labelText: error.isNotEmpty ? error : 'Email',
          hintText: 'Enter your email',
          suffixIcon: SuffixIconForm(
              svgIcon: error.isNotEmpty
                  ? 'assets/icons/Error.svg'
                  : 'assets/icons/Mail.svg')),
    );
  }
}
