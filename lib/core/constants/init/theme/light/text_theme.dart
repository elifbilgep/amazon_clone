import 'package:flutter/material.dart';
import 'color_theme_light.dart';

class TextThemeLight {
  static TextThemeLight? _instance;
  static TextThemeLight get instance {
    return _instance ??= TextThemeLight.init();
  }

  TextThemeLight.init();

  final TextStyle headline1 =
      TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: ColorThemeLight.instance!.textColor);
  final TextStyle headline2 = const TextStyle(fontSize: 30, fontWeight: FontWeight.w300, letterSpacing: -0.5);
  final TextStyle headline3 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: ColorThemeLight.instance!.textColor);
  final TextStyle headline4 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 0.25, color: ColorThemeLight.instance!.textColor);
  final TextStyle overline = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w100, letterSpacing: 0.5, color: ColorThemeLight.instance!.textColor);
  final TextStyle bodyText1 = const TextStyle(
    fontFamily: "Amazon Amber",
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  final TextStyle bodyText2 = const TextStyle(
    fontFamily: "Amazon Amber",
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  final TextStyle bodyText3 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: "Amazon Amber",
  );
}
