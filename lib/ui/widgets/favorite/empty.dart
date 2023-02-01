import 'package:flutter/material.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/assets/theme/app_typography.dart';

/// Виджет для отображения пустого списка раздела "Избранное"
class FavoriteEmpty extends StatelessWidget {
  /// Иконка
  final Widget icon;

  /// Текст-инструкция по дальнейшим действиям
  final String text;

  /// Конструктор виджета для отображения пустого списка раздела "Избранное"
  const FavoriteEmpty({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(height: 20),
        Text(
          AppStrings.empty,
          style: AppTypography.favoriteEmptyTitle,
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: AppTypography.disabledText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
