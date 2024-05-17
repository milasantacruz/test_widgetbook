import 'package:flutter/material.dart';
import 'theme.dart'; // Asegúrate de que la ruta de importación sea correcta.

class AppThemeData {
  static ThemeData getLightTheme() => lightTheme();
  static ThemeData getDarkTheme() => darkTheme();
}
