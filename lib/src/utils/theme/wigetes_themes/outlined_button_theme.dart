import 'package:my_medics/src/constants/colors.dart';
import 'package:my_medics/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  // * light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: tSecondaryColor,
        side: const BorderSide(color: tSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHigth)),
  );

  // * darck theme
  static final darckOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        foregroundColor: tWhiteColor,
        side: const BorderSide(color: tWhiteColor),
        padding: const EdgeInsets.symmetric(vertical: tButtonHigth)),
  );
}
