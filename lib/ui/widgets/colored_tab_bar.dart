import 'package:flutter/material.dart';

class ColoredTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabBar tabBar;
  final Color color;
  final double padding;
  final double radius;

  @override
  Size get preferredSize => tabBar.preferredSize;

  const ColoredTabBar({
    required this.tabBar,
    required this.color,
    this.padding = 0,
    this.radius = 0,
    super.key,
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
