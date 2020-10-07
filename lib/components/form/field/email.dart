import 'package:flutter/material.dart';
import 'package:ui_flutter/components/form/icons/suffix.dart';
import 'package:ui_flutter/constants/errors.dart';

TextFormField buildEmailFormField(
    {String error, Function setErrorState, Function onSaved}) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    onSaved: (value) => onSaved(value),
    onChanged: (value) {
      if (value.isEmpty) {
        setErrorState(emailNullError);
      } else if (value.isNotEmpty && !emailValidatorRegExp.hasMatch(value))
        setErrorState(invalidEmailError);
      else
        setErrorState('');
      return null;
    },
    validator: (value) {
      if (value.isEmpty)
        return setErrorState(emailNullError);
      else if (!emailValidatorRegExp.hasMatch(value))
        return setErrorState(invalidEmailError);
      return null;
    },
    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: error.isNotEmpty ? error : 'Email',
      hintText: 'Enter your email',
      suffixIcon: SuffixIconForm(
        svgIcon: error.isNotEmpty
          ? 'assets/icons/Error.svg'
          : 'assets/icons/Mail.svg'
        )
      ),
  );
}
