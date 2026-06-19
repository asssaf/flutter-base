import 'package:flutter/material.dart';

/// Core application theme configuration.
class AppTheme {
  const AppTheme._();

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    );
  }
}
