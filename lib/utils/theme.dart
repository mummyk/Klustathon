import 'package:app/utils/widgetTheme/elevatedButton_theme.dart';
import 'package:app/utils/widgetTheme/iconButton_theme.dart';
import 'package:app/utils/widgetTheme/textButton_theme.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  iconButtonTheme: TIconButtonTheme.lightIconButtonTheme,
  textButtonTheme: TTextButtonTheme.lightTextButtonTheme,
  elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  // other light theme properties
);

final darkTheme = ThemeData(
  primarySwatch: Colors.indigo,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  iconButtonTheme: TIconButtonTheme.darkIconButtonTheme,
  textButtonTheme: TTextButtonTheme.darkTextButtonTheme,
  elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  // other dark theme properties
);
