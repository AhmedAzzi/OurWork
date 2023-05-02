import 'package:MyMedice/src/constants/colors.dart';

import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      prefixIconColor: tSecondaryColor,
      floatingLabelStyle: const TextStyle(color: tSecondaryColor),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2.0, color: tSecondaryColor),
          borderRadius: BorderRadius.circular(100)));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      prefixIconColor: tPrimaryColor,
      floatingLabelStyle: const TextStyle(color: tPrimaryColor),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2.0, color: tPrimaryColor),
          borderRadius: BorderRadius.circular(100)));
}
