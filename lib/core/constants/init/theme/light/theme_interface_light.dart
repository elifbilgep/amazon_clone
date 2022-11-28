import 'color_theme_light.dart';
import 'text_theme.dart';

abstract class ILightTheme {
  TextThemeLight? textThemeDark = TextThemeLight.instance;
  ColorThemeLight? colorThemeLight = ColorThemeLight.instance;
}
