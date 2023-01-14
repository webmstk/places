import 'package:flutter/material.dart';
import 'package:places/assets/app_strings.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/domain/sight.dart';

/// Экран достопримечательности
class SightDetails extends StatelessWidget {
  /// Достопримечательность
  final Sight sight;

  /// Конструктор экрана достопримечательности
  const SightDetails({super.key, required this.sight});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ColoredBox(
        color: AppColors.appBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.indigo,
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 20),
                    width: 30,
                    height: 30,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.name,
                    style: AppTypography.header2,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        sight.type.string,
                        style: AppTypography.boldText,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        sight.visitingHours ?? '',
                        style: AppTypography.baseText,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    sight.details,
                    style: AppTypography.baseText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      color: AppColors.buttonBackground,
                      width: double.infinity,
                      height: 50,
                      child: Center(
                        child: Text(
                          AppStrings.getDirections,
                          style: AppTypography.buttonText,
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.green,
                            margin: const EdgeInsets.only(right: 10),
                            width: 25,
                            height: 20,
                          ),
                          Text(
                            AppStrings.toPlan,
                            style: AppTypography.disabledText,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.green,
                            margin: const EdgeInsets.only(right: 10),
                            width: 25,
                            height: 20,
                          ),
                          const Text(
                            AppStrings.addToFavorites,
                            style: AppTypography.baseText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
