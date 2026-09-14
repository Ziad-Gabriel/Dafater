import 'package:flutter/material.dart';

class TextStyles {
  static final titleStyle =const TextStyle(fontFamily: 'Geist');
  static final bodyStyle =const TextStyle(fontFamily: 'Geist');

  static TextTheme get textTheme => TextTheme(
    titleLarge: titleStyle.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis
    ),
    titleMedium: titleStyle.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
    titleSmall: titleStyle.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
    bodyLarge: bodyStyle.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
    bodyMedium: bodyStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    ),
    bodySmall: bodyStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    ),
  );
}
