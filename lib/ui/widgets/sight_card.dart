import 'package:flutter/material.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/domain/sight.dart';

/// Строка (row) списка достопримечательностей
class SightCard extends StatelessWidget {
  /// Достопримечательность
  final Sight sight;

  /// Конструктор строки (row) списка достопримечательностей
  const SightCard(this.sight, {super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: AppColors.rowCardBackground,
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.indigo,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sight.type.string,
                          style: AppTypography.foregroundText,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.name,
                    style: AppTypography.rowHeader,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    sight.details,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.rowText,
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
