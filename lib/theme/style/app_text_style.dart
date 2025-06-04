import 'package:flutter/material.dart';

import 'package:mini_mart/theme/style/app_palette.dart';

import 'theme_pair.dart';

abstract class AppTextStyle {
  static const ThemePair<TextStyle> appBarTitle = ThemePair<TextStyle>(
    light: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: AppPalette.pickledBluewood,
    ),
    dark: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: AppPalette.pickledBluewood,
    ),
  );

  static const ThemePair<TextStyle> title1 = ThemePair<TextStyle>(
    light: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
    dark: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
  );

  static const ThemePair<TextStyle> title2 = ThemePair<TextStyle>(
    light: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppPalette.black,
    ),
    dark: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppPalette.black,
    ),
  );

  static const ThemePair<TextStyle> subtitle1 = ThemePair<TextStyle>(
    light: TextStyle(fontSize: 17, color: AppPalette.black),
    dark: TextStyle(fontSize: 17, color: AppPalette.black),
  );

  static const ThemePair<TextStyle> body1 = ThemePair<TextStyle>(
    light: TextStyle(fontSize: 14, color: AppPalette.black),
    dark: TextStyle(fontSize: 14, color: AppPalette.black),
  );

  static const ThemePair<TextStyle> body2 = ThemePair<TextStyle>(
    light: TextStyle(fontSize: 14, color: AppPalette.dustyGray),
    dark: TextStyle(fontSize: 14, color: AppPalette.dustyGray),
  );

  static const ThemePair<TextStyle> header1 = ThemePair<TextStyle>(
    light: TextStyle(
      fontSize: 32.75,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
    dark: TextStyle(
      fontSize: 32.75,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
  );

  static const ThemePair<TextStyle> header3 = ThemePair<TextStyle>(
    light: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
    dark: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
  );

  static const ThemePair<TextStyle> header5 = ThemePair<TextStyle>(
    light: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
    dark: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: AppPalette.black,
    ),
  );

  static const ThemePair<TextStyle> header6 = ThemePair<TextStyle>(
    light: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppPalette.black,
    ),
    dark: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppPalette.black,
    ),
  );
}

class AppTextStyleExtension extends ThemeExtension<AppTextStyleExtension> {
  final TextStyle appBarTitle;
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle subtitle1;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle header1;
  final TextStyle header3;
  final TextStyle header5;
  final TextStyle header6;
  AppTextStyleExtension({
    required this.appBarTitle,
    required this.title1,
    required this.title2,
    required this.subtitle1,
    required this.body1,
    required this.body2,
    required this.header1,
    required this.header3,
    required this.header5,
    required this.header6,
  });

  @override
  AppTextStyleExtension copyWith({
    TextStyle? appBarTitle,
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? subtitle1,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? header1,
    TextStyle? header3,
    TextStyle? header5,
    TextStyle? header6,
  }) {
    return AppTextStyleExtension(
      appBarTitle: appBarTitle ?? this.appBarTitle,
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      subtitle1: subtitle1 ?? this.subtitle1,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      header1: header1 ?? this.header1,
      header3: header3 ?? this.header3,
      header5: header5 ?? this.header5,
      header6: header6 ?? this.header6,
    );
  }

  @override
  ThemeExtension<AppTextStyleExtension> lerp(
    covariant ThemeExtension<AppTextStyleExtension>? other,
    double t,
  ) {
    return this;
  }
}
