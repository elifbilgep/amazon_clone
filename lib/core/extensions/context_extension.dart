import 'dart:math';

import 'package:amazon_clone/core/constants/init/theme/light/color_theme_light.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => width * 0.01;
  double get normalValue => width * 0.1;
  double get mediumValue => height * 0.02;
  double get highValue => height * 0.1;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => theme.colorScheme;
  ColorThemeLight? get customColors => ColorThemeLight.instance;
  TextTheme get textTheme => theme.textTheme;
  Brightness get brightness => theme.brightness;
}

extension EmptySpaceExtension on BuildContext {
  SizedBox get sizedBoxLowVertical => SizedBox(height: lowValue);
  SizedBox get sizedBoxNormalVertical => SizedBox(height: normalValue);
  SizedBox get sizedBoxMediumVertical => SizedBox(height: mediumValue);
  SizedBox get sizedBoxHighVertical => SizedBox(height: highValue);
  SizedBox sizedBoxCustomVertical(double val) => SizedBox(height: dynamicHeight(val));

  SizedBox get sizedBoxLowHorizontal => SizedBox(width: lowValue);
  SizedBox get sizedBoxNormalHorizontal => SizedBox(width: normalValue);
  SizedBox get sizedBoxMediumHorizontal => SizedBox(width: mediumValue);
  SizedBox get sizedBoxHighHorizontal => SizedBox(width: highValue);
  SizedBox sizedBoxCustomHorizontal(double val) => SizedBox(height: dynamicWidth(val));
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLowAll => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormalAll => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMediumAll => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHighAll => EdgeInsets.all(highValue);
}

extension PaddingExtensionSymmetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical => EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical => EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical => EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal => EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal => EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal => EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal => EdgeInsets.symmetric(horizontal: highValue);

  EdgeInsets get paddingLowOnly =>
      EdgeInsets.only(left: lowValue, bottom: lowValue, top: normalValue * 2, right: lowValue);
}

extension RadiusExtension on BuildContext {
  Radius get lowRadius => Radius.circular(width * 0.02);
  Radius get normalRadius => Radius.circular(width * 0.05);
  Radius get highadius => Radius.circular(width * 0.1);
  BorderRadius get borderlowRadius => BorderRadius.circular(5);
  BorderRadius get bordernormalRadius => BorderRadius.circular(10);
  BorderRadius get borderhighadius => BorderRadius.circular(20);
}

extension ColorExtension on BuildContext {
  Color get randomColor => Colors.primaries[Random().nextInt(17)];
}

extension DurationExtension on BuildContext {
  Duration get shortDuration => const Duration(milliseconds: 500);
  Duration get normalDuration => const Duration(seconds: 1);
}

extension SnackBarExtension on BuildContext {
  dynamic showSnackBar(String text) => ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        content: Text(text, style: textTheme.bodyText1),
//        backgroundColor: customColors.azure,
      ));
}
