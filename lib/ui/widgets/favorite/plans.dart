import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/favorite/empty.dart';
import 'package:places/ui/widgets/favorite/sight_plan.dart';

final planningSights = <FavoriteSightPlan>[
  FavoriteSightPlan(
    sight: mocks[0],
    targetDate: '25 окт. 2023',
  ),
  FavoriteSightPlan(
    sight: mocks[1],
    targetDate: '28 окт. 2023',
  ),
];

/// Список "Хочу посетить"
class FavoritePlans extends StatelessWidget {
  /// Конструктор списока "Хочу посетить"
  const FavoritePlans({super.key});

  @override
  Widget build(BuildContext context) {
    return planningSights.isEmpty
        ? FavoriteEmpty(
            icon: SvgPicture.asset('res/icons/camera.svg'),
            text: AppStrings.emptyFavoritePlans,
          )
        : SingleChildScrollView(
            child: Column(children: planningSights),
          );
  }
}
