import 'package:flutter/material.dart';
import 'package:ui_flutter/components/button/auth/button.dart';
import 'package:ui_flutter/components/form/icons/suffix.dart';
import 'package:ui_flutter/constants/errors.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/screens/auth/forgot_password/no_account.dart';

class BodyForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text('Forgot Password',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(28),
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formkey = GlobalKey<FormState>();
  String email;
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) => email = value,
            onChanged: (value) {
              if (value.isEmpty)
                setState(() {
                  error = emailNullError;
                });
              else if (value.isNotEmpty &&
                  !emailValidatorRegExp.hasMatch(value))
                setState(() {
                  error = invalidEmailError;
                });
              else
                setState(() {
                  error = '';
                });
              return null;
            },
            validator: (value) {
              if (value.isEmpty)
                setState(() {
                  error = emailNullError;
                });
              else if (!emailValidatorRegExp.hasMatch(value))
                setState(() {
                  error = invalidEmailError;
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
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: 'Continue', 
            press: () {
              if(_formkey.currentState.validate()) {
                
              }
            }
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccount()
        ],
      ),
    );
  }
}
