import 'package:dafater/core/constants/colors/const_colors.dart';
import 'package:flutter/material.dart';

class ColorSchemes {
  static ColorScheme get light => ColorScheme.light(
    brightness: Brightness.light,
    surface: lightSurfaceColor,
    onSurface: Color(0xFF000000),
    primaryContainer: lightPrimaryContainerColor,
    primary: primaryColor,
    onPrimary: Color(0xFFFFFFFF),
    secondary: secondaryColor,
    secondaryContainer: lightSecondaryContainerColor,
    tertiary: tertiaryColor,
    shadow: Color(0xFF282828),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
  );

  // static ColorScheme get dark => ColorScheme.dark(
  //   brightness: Brightness.dark,
  //   surface: Color(0xFF121316),
  //   onSurface: Color(0xFFF4F4F5),
  //   primary: Color(0xFFF4F4F5),
  //   onPrimary: Color(0xFF121316),
  //   secondary: Color(0xFFA1A1AA),
  //   tertiary: Color(0xFFFDF2EE),
  //   error: Color(0xFFB00020),
  // );
}
