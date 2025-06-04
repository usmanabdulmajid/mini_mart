import 'package:flutter/material.dart';
import 'package:mini_mart/presentation/theme/style/app_palette.dart';
import 'package:mini_mart/presentation/theme/style/app_style.dart';
import 'package:mini_mart/presentation/theme/style/app_text_style.dart';

abstract class AppTheme {
  //---------------light theme---------------//

  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppPalette.primary.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppPalette.primary.light,
      secondary: AppPalette.secondary.light,
      background: AppPalette.backgroundColor.light,
    ),
    extensions: [_lightColorsExtension, _lightTextStyle, _lightAppStyle],
  );

  static final _lightColorsExtension = AppColorsExtension(
    primary: AppPalette.primary.light,
    secondary: AppPalette.secondary.light,
    backgroundColor: AppPalette.backgroundColor.light,
    shimmerColor: AppPalette.shimmerColor.light,
  );

  static final _lightTextStyle = AppTextStyleExtension(
    appBarTitle: AppTextStyle.appBarTitle.light,
    title1: AppTextStyle.title1.light,
    title2: AppTextStyle.title2.light,
    subtitle1: AppTextStyle.subtitle1.light,
    body1: AppTextStyle.body1.light,
    body2: AppTextStyle.body2.light,
    header1: AppTextStyle.header1.light,
    header3: AppTextStyle.header3.light,
    header5: AppTextStyle.header5.light,
    header6: AppTextStyle.header6.light,
  );

  static final _lightAppStyle = AppStyleExtetension(
    toastStyle: AppStyle.toast.light,
    bottomNavStyle: AppStyle.bottomNav.light,
    customButtonStyle: AppStyle.customButton.light,
    inputFieldStyle: AppStyle.inputField.light,
    productCardStyle: AppStyle.productCard.light,
    cartItemStyle: AppStyle.cartItem.light,
  );

  //---------------dark theme---------------//

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppPalette.primary.dark,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppPalette.primary.dark,
      secondary: AppPalette.secondary.dark,
      background: AppPalette.backgroundColor.dark,
    ),
    extensions: [_darkColorsExtension, _darkTextStyle, _dartAppStyle],
  );

  static final _darkColorsExtension = AppColorsExtension(
    primary: AppPalette.primary.dark,
    secondary: AppPalette.secondary.dark,
    backgroundColor: AppPalette.backgroundColor.dark,
    shimmerColor: AppPalette.shimmerColor.dark,
  );

  static final _darkTextStyle = AppTextStyleExtension(
    appBarTitle: AppTextStyle.appBarTitle.dark,
    title1: AppTextStyle.title1.dark,
    title2: AppTextStyle.title2.dark,
    subtitle1: AppTextStyle.subtitle1.dark,
    body1: AppTextStyle.body1.dark,
    body2: AppTextStyle.body2.dark,
    header1: AppTextStyle.header1.dark,
    header3: AppTextStyle.header3.dark,
    header5: AppTextStyle.header5.dark,
    header6: AppTextStyle.header6.dark,
  );

  static final _dartAppStyle = AppStyleExtetension(
    toastStyle: AppStyle.toast.dark,
    bottomNavStyle: AppStyle.bottomNav.dark,
    customButtonStyle: AppStyle.customButton.dark,
    inputFieldStyle: AppStyle.inputField.dark,
    productCardStyle: AppStyle.productCard.dark,
    cartItemStyle: AppStyle.cartItem.dark,
  );
}

extension AppExtension on ThemeData {
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppTheme._lightColorsExtension;

  AppTextStyleExtension get appTextStyles =>
      extension<AppTextStyleExtension>() ?? AppTheme._lightTextStyle;

  AppStyleExtetension get appStyles =>
      extension<AppStyleExtetension>() ?? AppTheme._lightAppStyle;
}
