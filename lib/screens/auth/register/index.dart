import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/auth/register/body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: BodyRegister(),
    );
  }
}
