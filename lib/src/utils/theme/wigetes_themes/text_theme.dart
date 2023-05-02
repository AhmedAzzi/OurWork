import 'package:my_medics/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(
          color: tDarkColor, fontSize: 28.0, fontWeight: FontWeight.bold),
      displayMedium: GoogleFonts.montserrat(
          color: tDarkColor, fontSize: 24.0, fontWeight: FontWeight.w700),
      displaySmall: GoogleFonts.montserrat(
          color: tDarkColor, fontSize: 24.0, fontWeight: FontWeight.w700),
      headlineMedium: GoogleFonts.montserrat(
          color: tDarkColor, fontSize: 16.0, fontWeight: FontWeight.w600),
      headlineSmall: GoogleFonts.montserrat(
          color: tDarkColor, fontSize: 14.0, fontWeight: FontWeight.w600),
      titleLarge: GoogleFonts.montserrat(
          color: tDarkColor, fontSize: 14.0, fontWeight: FontWeight.w600),
      bodyLarge: GoogleFonts.poppins(
          color: tDarkColor, fontSize: 14.0, fontWeight: FontWeight.normal),
      bodyMedium: GoogleFonts.poppins(
          color: tDarkColor, fontSize: 14.0, fontWeight: FontWeight.normal));

  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(
          color: tWhiteColor, fontSize: 28.0, fontWeight: FontWeight.bold),
      displayMedium: GoogleFonts.montserrat(
          color: tWhiteColor, fontSize: 24.0, fontWeight: FontWeight.w700),
      displaySmall: GoogleFonts.montserrat(
          color: tWhiteColor, fontSize: 24.0, fontWeight: FontWeight.w700),
      headlineMedium: GoogleFonts.montserrat(
          color: tWhiteColor, fontSize: 16.0, fontWeight: FontWeight.w600),
      headlineSmall: GoogleFonts.montserrat(
          color: tWhiteColor, fontSize: 14.0, fontWeight: FontWeight.w600),
      titleLarge: GoogleFonts.montserrat(
          color: tWhiteColor, fontSize: 14.0, fontWeight: FontWeight.w600),
      bodyLarge: GoogleFonts.poppins(
          color: tWhiteColor, fontSize: 14.0, fontWeight: FontWeight.normal),
      bodyMedium: GoogleFonts.poppins(
          color: tWhiteColor, fontSize: 14.0, fontWeight: FontWeight.normal));
}


// hadi file ta3 Text  Theme