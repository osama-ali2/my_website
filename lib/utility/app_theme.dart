import 'package:flutter/material.dart';
import 'package:my_website/utility/colors.dart';
import 'package:my_website/utility/constants.dart';

class AppTheme {
  static final _fontFamily = PoppinsFont;

  static final lightTheme = ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: primaryColor,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.black,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
      secondary: Colors.black,
      brightness: Brightness.light,
    ),
    fontFamily: _fontFamily,
  );

  static final darkTheme = ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: primaryColor,
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    highlightColor: Colors.black,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
      secondary: Colors.black,
      brightness: Brightness.dark,
    ),
    fontFamily: _fontFamily,
    // colorScheme: ColorScheme.fromSeed(seedColor: secondaryColor),
    textTheme: TextTheme(displayMedium: TextStyle(color: secondaryColor)),
    useMaterial3: true,
  );
}
