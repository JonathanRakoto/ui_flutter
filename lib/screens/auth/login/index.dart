import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/auth/login/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: BodyLogin(),
    );
  }
}
