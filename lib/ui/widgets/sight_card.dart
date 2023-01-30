import 'package:flutter/material.dart';
import 'package:places/assets/theme/app_colors.dart';
import 'package:places/assets/theme/app_typography.dart';
import 'package:places/domain/sight.dart';

/// Строка (row) списка достопримечательностей
class SightCard extends StatelessWidget {
  static const actionsMaxCount = 2;

  /// Достопримечательность
  final Sight sight;

  /// Список действий, отображается в правом верхнем углу фотки
  final List<Widget> actions;

  /// Дополнительный контент, отображается между названием достопримечательности
  /// и временем посещения
  final Widget? content;

  /// Можно задать aspectRatio, на свой страх и риск
  final double? aspectRatio;

  /// Конструктор строки (row) списка достопримечательностей
  const SightCard(
    this.sight, {
    this.actions = const [],
    this.content,
    this.aspectRatio,
    super.key,
  }) : assert(actions.length <= actionsMaxCount);

  @override
  Widget build(BuildContext context) {
    final innerCard = _InnerCard(
      sight,
      actions: actions,
      content: content,
    );

    return aspectRatio == null
        ? innerCard
        : AspectRatio(
            aspectRatio: aspectRatio!,
            child: innerCard,
          );
  }
}

class _InnerCard extends StatelessWidget {
  final Sight sight;

  final List<Widget> actions;

  final Widget? content;

  const _InnerCard(
    this.sight, {
    this.actions = const [],
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Stack(
            children: [
              SizedBox(
                height: 110,
                width: double.infinity,
                child: Image.network(
                  sight.url,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }

                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        sight.type.string,
                        style: AppTypography.foregroundText,
                      ),
                    ),
                    for (var action in actions)
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: SizedBox(
                          width: 25,
                          height: 25,
                          child: action,
                        ),
                      ),
                  ],
                ),
              ),
            ],
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
                if (content != null) ...[
                  content!,
                  const SizedBox(
                    height: 10,
                  ),
                ],
                Text(
                  sight.visitingHours ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.rowText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
