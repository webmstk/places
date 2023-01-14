import 'package:flutter/material.dart';
import 'package:places/assets/theme/app_colors.dart';

/// Шрифты, типографика
class AppTypography {
  static const baseText = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    color: AppColors.textBase,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
  );

  static final disabledText = baseText.copyWith(
    color: AppColors.textDisabled,
  );

  static final boldText = baseText.copyWith(
    fontWeight: FontWeight.w700,
  );

  static final buttonText = boldText.copyWith(
    color: AppColors.textButton,
  );

  static final foregroundText = boldText.copyWith(
    color: AppColors.textForeground,
  );

  static final rowHeader = baseText.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final rowText = baseText.copyWith(
    color: AppColors.textRow,
  );

  static final header1 = boldText.copyWith(
    fontSize: 32,
  );

  static final header2 = boldText.copyWith(
    fontSize: 24,
  );
}
