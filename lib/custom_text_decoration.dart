import 'package:flutter/material.dart';

class CustomTextDecoration {
  static InputDecoration textFieldDecoration({String? labelText}) {
    return InputDecoration(
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff4f359b)),
      ),
      labelText: labelText,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
    );
  }

  static InputDecoration passwordFieldDecoration(
      {Widget? suffixIcon, String? labelText}) {
    return InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff4f359b)),
        ),
        labelText: labelText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
        suffixIcon: suffixIcon);
  }
}
