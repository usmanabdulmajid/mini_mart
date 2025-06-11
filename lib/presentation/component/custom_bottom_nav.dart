import 'package:flutter/material.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<CustomBottomNavItem> items;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final double height;
  final EdgeInsets padding;
  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.backgroundColor,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.height = 90,
    this.padding = const EdgeInsets.fromLTRB(18.8, 4, 18.8, 6),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).appStyles.bottomNavStyle;
    return Container(
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? theme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.01),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            items.map((item) {
              final isSelected = items.indexOf(item) == currentIndex;
              return GestureDetector(
                onTap: () => onTap(items.indexOf(item)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    isSelected
                        ? Container(
                          padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
                          decoration: BoxDecoration(
                            color: theme.selectedAreaColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:
                              item.badgeCount <= 0
                                  ? item.activeIcon
                                  : Badge.count(
                                    count: item.badgeCount,
                                    backgroundColor: theme.badgeColor,
                                    child: item.activeIcon,
                                  ),
                        )
                        : item.badgeCount <= 0
                        ? item.icon
                        : Badge.count(
                          count: item.badgeCount,
                          backgroundColor: theme.badgeColor,
                          child: item.icon,
                        ),
                    Text(
                      item.label,
                      style:
                          isSelected
                              ? theme.selectedLabelStyle
                              : theme.unselectedLabelStyle,
                    ),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}

class CustomBottomNavItem {
  final Widget icon;
  final Widget activeIcon;
  final String label;
  final String? tooltip;
  final int badgeCount;
  CustomBottomNavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    this.tooltip,
    this.badgeCount = 0,
  });
}
