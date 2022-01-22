import 'package:flutter/material.dart';

class Theme {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[100],
      colorScheme: const ColorScheme.light().copyWith(
        secondary: Colors.grey[300],
      ));
}
