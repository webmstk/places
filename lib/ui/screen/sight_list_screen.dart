import 'package:flutter/material.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/sight_card.dart';

/// Список достопримечательностей
class SightListScreen extends StatefulWidget {
  /// Конструктор списка достопримечательностей
  const SightListScreen({super.key});

  @override
  State<SightListScreen> createState() {
    return _SightListScreenState();
  }
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    final rows = mocks.map((mock) {
      return SightCard(mock);
    }).toList();

    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: _AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: rows,
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Text(
          AppStrings.appTitle,
          style: AppTypography.header1,
        ),
      ),
      backgroundColor: AppColors.appBackground,
      elevation: 0,
    );
  }
}
