import 'package:dafater/core/constants/colors/color_schemes.dart';
import 'package:dafater/core/constants/colors/const_colors.dart';
import 'package:dafater/core/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: lightSurfaceColor,
    brightness: Brightness.light,
    colorScheme: ColorSchemes.light,
    textTheme: TextStyles.textTheme,
  );
  // static ThemeData get dark => ThemeData(
  //   brightness: Brightness.dark,
  //   colorScheme:ColorSchemes.dark,
  // );
}
