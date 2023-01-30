import 'package:flutter/material.dart';

/// Цветовая палитра приложения
class AppColors {
  // общее
  static const appBackground = _color1;
  static const appBarHeader = _color7;
  static const rowCardBackground = _color4;
  static const buttonBackground = _color5;
  static const textBase = _color3;
  static const textForeground = _color1;
  static const textRow = _color6;
  static const textDisabled = _color2;
  static const textButton = _color1;
  static const iconColor = _color1;
  static const positiveColor = _color5;
  static const neutralColor = _color8;

  // tabBar
  static const tabBarBackround = _color4;
  static const tabBarTabActiveBackround = _color3;
  static const tabBarTabActiveText = _color1;
  static const tabBarTabInactiveText = _color2;

  // палитра
  static const _color1 = Colors.white;
  static const _color2 = Color.fromRGBO(124, 126, 146, 0.56);
  static const _color3 = Color(0xFF3B3E5B);
  static const _color4 = Color(0xFFF5F5F5);
  static const _color5 = Colors.green;
  static const _color6 = Color(0xFF7C7E92);
  static const _color7 = Color(0xFF252849);
  static const _color8 = Color(0xFF7C7E92);
}
