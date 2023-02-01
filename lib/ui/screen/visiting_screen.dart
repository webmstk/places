import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/ui/widgets/colored_tab_bar.dart';
import 'package:places/ui/widgets/favorite/plans.dart';
import 'package:places/ui/widgets/favorite/visited.dart';

const double _borderRadius = 25.0;
const double _tabHeight = 40.0;

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings.favorites,
            style: AppTypography.appBarHeader,
          ),
          bottom: ColoredTabBar(
            color: AppColors.tabBarBackround,
            padding: 20,
            radius: _borderRadius,
            tabBar: TabBar(
              indicator: const BoxDecoration(
                color: AppColors.tabBarTabActiveBackround,
                borderRadius: BorderRadius.all(
                  Radius.circular(_borderRadius),
                ),
              ),
              labelStyle: AppTypography.boldText,
              labelColor: AppColors.tabBarTabActiveText,
              unselectedLabelColor: AppColors.tabBarTabInactiveText,
              splashBorderRadius: BorderRadius.circular(_borderRadius),
              tabs: const [
                Tab(
                  child: Text(AppStrings.favoritesTabBarFavorites),
                  height: _tabHeight,
                ),
                Tab(
                  child: Text(AppStrings.favoritesTabBarVisited),
                  height: _tabHeight,
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
                color: AppColors.iconNavBarColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/icons/map.svg',
                color: AppColors.iconNavBarColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/icons/heart.svg',
                color: AppColors.iconNavBarColor,
              ),
              activeIcon: SvgPicture.asset(
                'res/icons/heart_full.svg',
                color: AppColors.iconNavBarColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/icons/settings.svg',
                color: AppColors.iconNavBarColor,
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
