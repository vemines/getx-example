import 'package:flutter/material.dart';

import '../shared.dart';
import 'theme_extension.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light().copyWith(secondary: green),
  extensions: <ThemeExtension<dynamic>>[CustomColors.light],
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.light().copyWith(secondary: red),
  extensions: <ThemeExtension<dynamic>>[CustomColors.dark],
);

TextTheme getTheme(double width) {
  return width > 1400
      ? CustomTextTheme.largeTextTheme
      : (width > 600
          ? CustomTextTheme.mediumTextTheme
          : CustomTextTheme.smallTextTheme);
}
