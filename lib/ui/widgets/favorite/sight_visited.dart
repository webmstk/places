import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/widgets/sight_card.dart';

/// Карточка "Посетил"
class FavoriteSightVisited extends StatelessWidget {
  /// Достопримечательность
  final Sight sight;

  /// Время посещения достопримечательности
  final String targetDate;

  /// Конструктор карточки "Посетил"
  const FavoriteSightVisited({
    required this.sight,
    required this.targetDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SightCard(
          sight,
          actions: [
            SvgPicture.asset(
              'res/icons/share.svg',
              color: AppColors.iconColor,
            ),
            SvgPicture.asset(
              'res/icons/close.svg',
              color: AppColors.iconColor,
            ),
          ],
          content: Text(
            AppStrings.sightVisitedDate(targetDate),
            style: AppTypography.neutralText,
          ),
        ),
      ],
    );
  }
}
