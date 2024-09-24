import 'package:flutter/material.dart';

class ThemeDataUi {
  ThemeDataUi._();

  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xFF6A1B9A),
        secondaryHeaderColor: const Color(0xFF388E3C),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00E5FF),
            foregroundColor: const Color(0xFF00C853),
          ),
        ),
      );
}
