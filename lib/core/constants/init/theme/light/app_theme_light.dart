import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:amazon_clone/core/constants/init/theme/light/theme_interface_light.dart';
import 'package:amazon_clone/core/constants/init/theme/app_theme.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight.init();
  }

  AppThemeLight.init();

  @override
  ThemeData get theme => ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primaryColor: colorThemeLight!.primaryColor,
        colorScheme: colorThemeLight!.colorScheme,
        backgroundColor: colorThemeLight!.backgroundColor,
        scaffoldBackgroundColor: colorThemeLight!.greyBackgroundColor,
        brightness: Brightness.light,
        textTheme: textTheme(),
      );

  TextTheme textTheme() {
    return TextTheme(
        headline1: textThemeDark!.headline1,
        headline2: textThemeDark!.headline2,
        headline3: textThemeDark!.headline3,
        headline4: textThemeDark!.headline4,
        overline: textThemeDark!.overline,
        bodyText1: textThemeDark!.bodyText1,
        bodyText2: textThemeDark!.bodyText2);
  }
}
