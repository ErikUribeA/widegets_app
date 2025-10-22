import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.purple,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
  Colors.lightGreenAccent,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
    }): assert(
      selectedColor >= 0, 'Selected color must be greater than 0'
    ), assert(
      selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length - 1}'
    );

    ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        centerTitle: false,
      )
    );
}