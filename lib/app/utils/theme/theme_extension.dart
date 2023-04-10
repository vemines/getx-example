import 'package:flutter/material.dart';

import '../values/colors.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.color1,
    required this.color2,
  });
  final Color? color1;
  final Color? color2;

  @override
  CustomColors copyWith({
    Color? color1,
    Color? color2,
  }) {
    return CustomColors(
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      color1: Color.lerp(color1, other.color1, t),
      color2: Color.lerp(color2, other.color2, t),
    );
  }

  static CustomColors light = CustomColors(
    color1: red,
    color2: green,
  );
  // the dark theme
  static CustomColors dark = CustomColors(
    color1: blue,
    color2: black,
  );
}
