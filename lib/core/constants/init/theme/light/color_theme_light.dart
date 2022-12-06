import 'package:flutter/material.dart';

class ColorThemeLight {
  static ColorThemeLight? _instance;
  static ColorThemeLight? get instance {
    return _instance ??= ColorThemeLight.init();
  }

  ColorThemeLight.init();

  final Color primaryColor = const Color.fromRGBO(255, 153, 0, 1);
  final Color backgroundColor = Colors.white;
  final Color greyBackgroundColor = const Color(0xffebecee);
  final Color selectedNavBarColor = Colors.cyan[800]!;
  final Color unselectedNavBarColor = Colors.black87;
  final Color errorColor = Colors.red.shade700;
  final Color textColor = Colors.grey.shade900;

  ColorScheme get colorScheme => ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        background: backgroundColor,
        error: errorColor,
        surface: backgroundColor,
        onBackground: backgroundColor,
        onPrimary: selectedNavBarColor,
        onError: errorColor,
        onSecondary: unselectedNavBarColor,
        onSurface: backgroundColor,
        secondary: backgroundColor,
      );
}
