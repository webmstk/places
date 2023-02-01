import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/favorite/empty.dart';
import 'package:places/ui/widgets/favorite/sight_visited.dart';

final visitedSights = <FavoriteSightVisited>[
  FavoriteSightVisited(
    sight: mocks[2],
    targetDate: '17 окт. 2023',
  ),
  FavoriteSightVisited(
    sight: mocks[3],
    targetDate: '19 окт. 2023',
  ),
];

/// Список "Посетил"
class FavoriteVisited extends StatelessWidget {
  /// Конструктор списка "Посетил"
  const FavoriteVisited({super.key});

  @override
  Widget build(BuildContext context) {
    return visitedSights.isEmpty
        ? FavoriteEmpty(
            icon: SvgPicture.asset('res/icons/route.svg'),
            text: AppStrings.emptyFavoriteVisited,
          )
        : SingleChildScrollView(
            child: Column(children: visitedSights),
          );
  }
}
