import 'package:flutter/material.dart';

final ThemeData appThemeDataLigth = ThemeData(
  primaryColor: const Color.fromRGBO(57, 2, 75, 1),
  fontFamily: 'Bariol',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
);
