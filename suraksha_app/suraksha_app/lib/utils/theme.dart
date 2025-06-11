import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    onSurface: Color.fromRGBO(15, 14, 71, 1.0),
    primary: Color.fromRGBO(36, 33, 110, 1),
    secondary: Colors.grey.shade300,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    // onSurface: Color.fromRGBO(15, 14, 71, 1.0),
    onSurface: Colors.white,
    primary: Color.fromRGBO(36, 33, 110, 1),
    secondary: Colors.grey.shade300,
  ),
);
