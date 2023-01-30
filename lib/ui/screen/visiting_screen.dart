import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/ui/widgets/favorite/plans.dart';
import 'package:places/ui/widgets/favorite/visited.dart';

/// Экран посещённых мест
class VisitingScreen extends StatefulWidget {
  /// Конструктор экрана посещённых мест
  const VisitingScreen({super.key});

  @override
  State<VisitingScreen> createState() {
    return _VisitingScreenState();
  }
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    const borderRadius = 25.0;
    const tabHeight = 40.0;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings.favorites,
            style: AppTypography.appBarHeader,
          ),
          bottom: _ColoredTabBar(
            color: AppColors.tabBarBackround,
            padding: 20,
            radius: borderRadius,
            tabBar: TabBar(
              indicator: const BoxDecoration(
                color: AppColors.tabBarTabActiveBackround,
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
              ),
              labelStyle: AppTypography.boldText,
              labelColor: AppColors.tabBarTabActiveText,
              unselectedLabelColor: AppColors.tabBarTabInactiveText,
              splashBorderRadius: BorderRadius.circular(borderRadius),
              tabs: const [
                Tab(
                  child: Text(AppStrings.favoritesTabBarFavorites),
                  height: tabHeight,
                ),
                Tab(
                  child: Text(AppStrings.favoritesTabBarVisited),
                  height: tabHeight,
                ),
              ],
            ),
          ),
          backgroundColor: AppColors.appBackground,
          elevation: 0,
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: FavoritePlans(),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: FavoriteVisited(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 2,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/icons/list.svg',
                color: AppColors.iconColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/icons/map.svg',
                color: AppColors.iconColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/icons/heart.svg',
                color: AppColors.iconColor,
              ),
              activeIcon: SvgPicture.asset(
                'res/icons/heart_full.svg',
                color: AppColors.iconColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/icons/settings.svg',
                color: AppColors.iconColor,
              ),
              label: '',
            ),
          ],
        ),
        backgroundColor: AppColors.appBackground,
      ),
    );
  }
}

class _ColoredTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabBar tabBar;
  final Color color;
  final double padding;
  final double radius;

  @override
  Size get preferredSize => tabBar.preferredSize;

  const _ColoredTabBar({
    required this.tabBar,
    required this.color,
    this.padding = 0,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: tabBar,
      ),
    );
  }
}
