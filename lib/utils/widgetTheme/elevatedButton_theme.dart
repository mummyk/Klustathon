import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../constants/size.dart';

/* -- Light & Dark Elevated Button Themes */
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

/* -- Light Theme */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: ColorConstant.primaryColorLight,
      side: const BorderSide(style: BorderStyle.none),
      padding: const EdgeInsets.symmetric(
        vertical: tButtonHeight,
      ),
    ),
  );

/* -- Dark Theme */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        backgroundColor: ColorConstant.primaryColorDark,
        side: const BorderSide(style: BorderStyle.none),
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}
