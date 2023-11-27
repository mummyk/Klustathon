import 'package:app/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Icon Button Themes */
class TIconButtonTheme {
  TIconButtonTheme._();

/* -- Light Theme */
  static final lightIconButtonTheme = IconButtonThemeData(
      style: IconButton.styleFrom(
    shape: const RoundedRectangleBorder(),
    backgroundColor: ColorConstant.primaryColorLight,
  ));

/* -- Dark Theme */
  static final darkIconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: ColorConstant.primaryColorDark,
    ),
  );
}
