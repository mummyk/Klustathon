import 'package:app/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Icon Button Themes */
class TTextButtonTheme {
  TTextButtonTheme._();

/* -- Light Theme */
  static final lightTextButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
    foregroundColor: ColorConstant.primaryColorLight,
  ));

/* -- Dark Theme */
  static final darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: ColorConstant.primaryColorDark,
    ),
  );
}
