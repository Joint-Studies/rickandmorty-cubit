import 'package:flutter/material.dart';

class ThemeDataUi {
  ThemeDataUi._();

  static get theme => ThemeData(
        primaryColor: const Color(0xFF6A1B9A),
        secondaryHeaderColor: Color(0xFF388E3C),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00E5FF),
            foregroundColor: Color(0xFF00C853),
          ),
        ),
      );
}
