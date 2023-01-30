import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/widgets/sight_card.dart';

/// Катрочка "Хочу посетить"
class FavoriteSightPlan extends StatelessWidget {
  /// Достопримечательность
  final Sight sight;

  /// Время планируемого посещения
  final String targetDate;

  /// Конструктор карточки "Хочу посетить"
  const FavoriteSightPlan({
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
              'res/icons/calendar.svg',
              color: AppColors.iconColor,
            ),
            SvgPicture.asset(
              'res/icons/close.svg',
              color: AppColors.iconColor,
            ),
          ],
          content: Text(
            'Запланировано на $targetDate',
            style: AppTypography.positiveText,
          ),
        ),
      ],
    );
  }
}
