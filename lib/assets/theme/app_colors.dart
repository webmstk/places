import 'package:flutter/material.dart';

/// Цветовая палитра приложения
class AppColors {
  // общее
  static const appBackground = _white;
  static const appBarHeader = _pirpleDarkest;
  static const rowCardBackground = _greyVeryLight;
  static const buttonBackground = _green;
  static const textBase = _pirpleDark;
  static const textForeground = _white;
  static const textRow = _greyDark;
  static const textDisabled = _pirpleTransparent;
  static const textButton = _white;
  static const iconColor = _white;
  static const iconNavBarColor = _pirpleDark;
  static const positiveColor = _green;
  static const neutralColor = _greyDark;

  // tabBar
  static const tabBarBackround = _greyVeryLight;
  static const tabBarTabActiveBackround = _pirpleDark;
  static const tabBarTabActiveText = _white;
  static const tabBarTabInactiveText = _pirpleTransparent;

  // палитра
  static const _white = Colors.white;
  static const _green = Colors.green;
  static const _pirpleTransparent = Color.fromRGBO(124, 126, 146, 0.56);
  static const _pirpleDark = Color(0xFF3B3E5B);
  static const _pirpleDarkest = Color(0xFF252849);
  static const _greyVeryLight = Color(0xFFF5F5F5);
  static const _greyDark = Color(0xFF7C7E92);
}
