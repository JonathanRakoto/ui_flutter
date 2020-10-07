import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/auth/forgot_password/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: BodyForgotPassword(),
    );
  }
}
