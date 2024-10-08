import 'package:flutter/material.dart';

class ThemeDataUi {
  ThemeDataUi._();

  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xFF6A1B9A),
        secondaryHeaderColor: const Color(0xFF388E3C),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF01B4C6),
            side: const BorderSide(
              color: Color(0xFF97CE4C),
              width: 3,
            ),
          ),
        ),
      );
}
