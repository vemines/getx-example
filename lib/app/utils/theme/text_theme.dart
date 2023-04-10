import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme {
  static TextTheme largeTextTheme = TextTheme(
    // large title
    displaySmall: largeDisplaySmall,
    // small title
    headlineMedium: largeHeadlineMedium,
    // paragraph text
    bodyLarge: largeBodyLarge,
    // small text like field title
    bodyMedium: largeBodyMedium,
    // button
    labelLarge: largeLabelLarge,
  );
  static TextTheme smallTextTheme = TextTheme(
    displaySmall: smallDisplaySmall,
    headlineMedium: smallHeadlineMedium,
    bodyLarge: smallBodyLarge,
    bodyMedium: smallBodyMedium,
    labelLarge: smallLabelLarge,
  );
  static TextTheme mediumTextTheme = TextTheme(
    displaySmall: mediumDisplaySmall,
    headlineMedium: mediumHeadlineMedium,
    bodyLarge: mediumBodyLarge,
    bodyMedium: mediumBodyMedium,
    labelLarge: mediumLabelLarge,
  );
}

var defaultFont = GoogleFonts.roboto();
// large text theme
// TextStyle largeDisplaySmall = defaultFont.copyWith(
//     fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.0);
TextStyle largeHeadlineMedium = defaultFont.copyWith(
    fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.75);
TextStyle largeBodyLarge = defaultFont.copyWith(
    fontSize: 18, fontWeight: FontWeight.normal, letterSpacing: 0.5);
TextStyle largeBodyMedium = defaultFont.copyWith(
    fontSize: 16, fontWeight: FontWeight.normal, letterSpacing: 0.25);
TextStyle largeLabelLarge = defaultFont.copyWith(
    fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1.25);

// small text theme
// TextStyle smallDisplaySmall = defaultFont.copyWith(
//     fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1.0);
TextStyle smallHeadlineMedium = defaultFont.copyWith(
    fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 0.75);
TextStyle smallBodyLarge = defaultFont.copyWith(
    fontSize: 16, fontWeight: FontWeight.normal, letterSpacing: 0.5);
TextStyle smallBodyMedium = defaultFont.copyWith(
    fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: 0.25);
TextStyle smallLabelLarge = defaultFont.copyWith(
    fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 1.25);

// medium text theme
// TextStyle mediumDisplaySmall = defaultFont.copyWith(
//     fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.0);
TextStyle mediumHeadlineMedium = defaultFont.copyWith(
    fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 0.75);
TextStyle mediumBodyLarge = defaultFont.copyWith(
    fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: 0.5);
TextStyle mediumBodyMedium = defaultFont.copyWith(
    fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 0.25);
TextStyle mediumLabelLarge = defaultFont.copyWith(
    fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 1.25);

// make bigger for test
TextStyle mediumDisplaySmall = defaultFont.copyWith(
    fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 1.0);
TextStyle smallDisplaySmall = defaultFont.copyWith(
    fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.0);
TextStyle largeDisplaySmall = defaultFont.copyWith(
    fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 1.0);
