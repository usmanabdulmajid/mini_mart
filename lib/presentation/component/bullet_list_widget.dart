import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class BulletListWidget extends StatelessWidget {
  final String title;
  final List<String> items;
  final TextStyle? titleStyle;
  final TextStyle? itemStyle;
  final Color? bulletColor;
  final double bulletSize;
  final double spacing;
  final EdgeInsets? padding;

  const BulletListWidget({
    super.key,
    required this.title,
    required this.items,
    this.titleStyle,
    this.itemStyle,
    this.bulletColor,
    this.bulletSize = 4.0,
    this.spacing = 0.0,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle ?? theme.appTextStyles.body2),
          Gap(spacing),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(left: 8),
              child: BulletPoint(
                text: item,
                bulletColor: bulletColor ?? theme.appTextStyles.body2.color!,
                bulletSize: bulletSize,
                textStyle: itemStyle ?? theme.appTextStyles.body2,
                spacing: spacing,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  final Color bulletColor;
  final double bulletSize;
  final TextStyle textStyle;
  final double spacing;

  const BulletPoint({
    super.key,
    required this.text,
    required this.bulletColor,
    required this.bulletSize,
    required this.textStyle,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: spacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8, right: 12),
            width: bulletSize,
            height: bulletSize,
            decoration: BoxDecoration(
              color: bulletColor,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(child: Text(text, style: textStyle)),
        ],
      ),
    );
  }
}
