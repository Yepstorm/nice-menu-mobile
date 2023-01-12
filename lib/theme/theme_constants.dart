import 'package:flutter/material.dart';

import '../utils/const_colors.dart';



ThemeData lightTheme = ThemeData(
  // colorSchemeSeed: ,
  primaryColor: colOrange1,
  useMaterial3: true,
  fontFamily: 'Inter',
  brightness: Brightness.light,
  textTheme: const TextTheme(
  bodyText2: TextStyle(),
  bodyText1: TextStyle(),
  button: TextStyle(),
  caption: TextStyle(),
  overline: TextStyle(),
  subtitle2: TextStyle(),
  headline6: TextStyle(),
),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark
);