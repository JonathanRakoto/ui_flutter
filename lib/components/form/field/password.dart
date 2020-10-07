import 'package:flutter/material.dart';
import 'package:ui_flutter/components/form/icons/suffix.dart';
import 'package:ui_flutter/constants/errors.dart';

TextFormField buildPasswordFormField({
    String error, 
    Function setErrorState,
    Function onSaved
  }) {
    return TextFormField(
      obscureText: true,
      onSaved: (value) => onSaved(value),
      onChanged: (value) {
        if (value.isEmpty)
          setErrorState(passNullError);
        else if (value.isNotEmpty && value.length < 8)
          setErrorState(shortPassError);
        else
          setErrorState('');
        return null;
      },
      validator: (value) {
        if (value.isEmpty)
          return setErrorState(passNullError);
        else if (value.length < 8)
          return setErrorState(shortPassError);
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: error.isNotEmpty ? error : 'Password',
        hintText: 'Enter your password',
        suffixIcon: SuffixIconForm(
          svgIcon: error.isNotEmpty
            ? 'assets/icons/Error.svg'
            : 'assets/icons/Lock.svg'
          )
        ),
    );
  }
