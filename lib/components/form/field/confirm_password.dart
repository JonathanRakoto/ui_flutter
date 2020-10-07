import 'package:flutter/material.dart';
import 'package:ui_flutter/components/form/icons/suffix.dart';
import 'package:ui_flutter/constants/errors.dart';

TextFormField buildConfirmPasswordFormField({
    String error,
    String password,
    Function setErrorState,
    Function onSaved,
  }) {
    return TextFormField(
      obscureText: true,
      onSaved: (value) => onSaved(value),
      onChanged: (value) {
        if (password != value)
          setErrorState(matchPassError);
        else
          setErrorState('');
        return null;
      },
      validator: (value) {
        if (value.isEmpty)
          return setErrorState(matchPassError);
        else if (password != value)
          return setErrorState(matchPassError);
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: error.isNotEmpty ? error : 'Confirm Password',
        hintText: 'Re-enter your password',
        suffixIcon: SuffixIconForm(
          svgIcon: error.isNotEmpty
            ? 'assets/icons/Error.svg'
            : 'assets/icons/Lock.svg'
          )
        ),
    );
  }
