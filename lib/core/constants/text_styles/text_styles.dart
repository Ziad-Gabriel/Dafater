import 'package:flutter/material.dart';

class TextStyles {
  static final titleStyle = TextStyle(fontFamily: 'Geist');
  static final bodyStyle = TextStyle(fontFamily: 'Geist');

  static TextTheme get textTheme => TextTheme(
    titleLarge: titleStyle.copyWith(fontSize: 28, fontWeight: FontWeight.w700),
    titleMedium: titleStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
    titleSmall: titleStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
    bodyLarge: bodyStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
    bodyMedium: bodyStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
    bodySmall: bodyStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
  );
}
