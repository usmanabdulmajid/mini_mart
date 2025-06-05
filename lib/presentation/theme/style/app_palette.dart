import 'package:flutter/material.dart';
import 'package:mini_mart/presentation/theme/style/theme_pair.dart';

abstract class AppPalette {
  static const white = Color(0XFFFFFFFF);
  static const black = Color(0XFF000000);
  static const transparent = Colors.transparent;
  static const catSkillWhite = Color(0XFFE2E8F0);
  static const athensGray = Color(0XFFF6F5F8);
  static const malibu = Color(0XFF60B5FF);
  static const pickledBluewood = Color(0XFF334155);
  static const mountainMeadow = Color(0XFF10B981);
  static const royalBlue = Color(0XFF2563EB);
  static const shipGray = Color(0XFF49454F);
  static const dustyGray = Color(0XFF999999);
  static const alabaster = Color(0XFFFBFBFB);
  static const slateGray = Color(0XFF64748B);
  static const radicalRed = Color(0XFFFF2D55);
  static const oxfordBlue = Color(0XFF3C4856);
  static const gullGray = Color(0XFF94A3B8);
  static const geyser = Color(0XFFCBD5E1);
  static const mercury = Color(0XFFE6E6E6);
  static const wildSand = Color(0XFFF5F5F5);

  static const primary = ThemePair<Color>(light: white, dark: black);
  static const secondary = ThemePair<Color>(light: black, dark: white);
  static const backgroundColor = ThemePair<Color>(
    light: alabaster,
    dark: black,
  );

  static const shimmerColor = ThemePair<Color>(light: mercury, dark: mercury);
  static const dividerColor = ThemePair<Color>(
    light: catSkillWhite,
    dark: catSkillWhite,
  );
}

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color primary;
  final Color secondary;
  final Color backgroundColor;
  final Color shimmerColor;
  final Color dividerColor;

  AppColorsExtension({
    required this.primary,
    required this.secondary,
    required this.backgroundColor,
    required this.shimmerColor,
    required this.dividerColor,
  });

  @override
  AppColorsExtension copyWith({
    Color? primary,
    Color? secondary,
    Color? backgroundColor,
    Color? shimmerColor,
    Color? dividerColor,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shimmerColor: shimmerColor ?? this.shimmerColor,
      dividerColor: dividerColor ?? this.dividerColor,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    return this;
  }
}
