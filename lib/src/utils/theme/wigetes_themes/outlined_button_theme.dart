import 'package:MyMedice/src/constants/colors.dart';
import 'package:MyMedice/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  // * light theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: tSecondaryColor,
                        side:  BorderSide(color: tSecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHigth)),
  );


  // * darck theme
  static final darckOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: tWhiteColor,
                        side: const BorderSide(color: tWhiteColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHigth)),
  );
}
