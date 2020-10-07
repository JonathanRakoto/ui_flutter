import 'package:flutter/material.dart';
import 'package:ui_flutter/components/button/auth/button.dart';
import 'package:ui_flutter/components/form/field/confirm_password.dart';
import 'package:ui_flutter/components/form/field/email.dart';
import 'package:ui_flutter/components/form/field/password.dart';
import 'package:ui_flutter/constants/size.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  String errorEmail = '';
  String errorPassword = '';
  String errorConfirmPassword = '';
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
          buildConfirmPasswordFormField(
              error: errorConfirmPassword,
              setErrorState: (value) =>
                  setState(() => errorConfirmPassword = value),
              onSaved: (value) => confirmPassword = value,
              password: password),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate())
                  _formKey.currentState.save();
              })
        ],
      ),
    );
  }
}
