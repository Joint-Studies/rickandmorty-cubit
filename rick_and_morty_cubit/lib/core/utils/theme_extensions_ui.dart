import 'package:flutter/material.dart';

extension ThemeExtensionsUi on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get secondaryColor => Theme.of(this).secondaryHeaderColor;
}
