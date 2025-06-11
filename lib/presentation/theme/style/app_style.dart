import 'package:flutter/material.dart';
import 'package:mini_mart/presentation/theme/style/app_font.dart';
import 'package:mini_mart/presentation/theme/style/app_palette.dart';
import 'package:mini_mart/presentation/theme/style/styles.dart';
import 'package:mini_mart/presentation/theme/style/theme_pair.dart';

abstract class AppStyle {
  static final ThemePair<ToastStyle> toast = ThemePair(
    light: ToastStyle(
      backgroundColor: AppPalette.white,
      borderColor: AppPalette.mountainMeadow,
      checkIconColor: AppPalette.mountainMeadow,
      closeIconColor: AppPalette.pickledBluewood,
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
    dark: ToastStyle(
      backgroundColor: AppPalette.white,
      borderColor: AppPalette.mountainMeadow,
      checkIconColor: AppPalette.mountainMeadow,
      closeIconColor: AppPalette.pickledBluewood,
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
  );

  static final ThemePair<BottomNavStyle> bottomNav = ThemePair(
    light: BottomNavStyle(
      backgroundColor: AppPalette.white,
      selectedItemColor: AppPalette.white,
      unselectedItemColor: AppPalette.black,
      selectedAreaColor: AppPalette.malibu,
      unselectedAreaColor: AppPalette.transparent,
      badgeColor: AppPalette.oxfordBlue,
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: AppPalette.malibu,
        fontFamily: AppFont.ibmPlexSans,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppPalette.shipGray,
        fontFamily: AppFont.ibmPlexSans,
      ),
      badgeTextStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: AppPalette.white,
        fontFamily: AppFont.ibmPlexSans,
      ),
      selectedFontSize: 10,
      unselectedFontSize: 10,
      iconSize: 24,
    ),
    dark: BottomNavStyle(
      backgroundColor: AppPalette.white,
      selectedItemColor: AppPalette.white,
      unselectedItemColor: AppPalette.black,
      selectedAreaColor: AppPalette.malibu,
      unselectedAreaColor: AppPalette.transparent,
      badgeColor: AppPalette.oxfordBlue,
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: AppPalette.malibu,
        fontFamily: AppFont.ibmPlexSans,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppPalette.shipGray,
        fontFamily: AppFont.ibmPlexSans,
      ),
      badgeTextStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: AppPalette.white,
        fontFamily: AppFont.ibmPlexSans,
      ),
      selectedFontSize: 10,
      unselectedFontSize: 10,
      iconSize: 24,
    ),
  );

  static final ThemePair<CustomButtonStyle> customButton = ThemePair(
    light: CustomButtonStyle(
      color: AppPalette.malibu,
      disableColor: AppPalette.catSkillWhite,
      foregroundColor: AppPalette.malibu,
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppPalette.white,
        fontFamily: AppFont.ibmPlexSans,
      ),
      disableTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppPalette.slateGray,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
    dark: CustomButtonStyle(
      color: AppPalette.malibu,
      disableColor: AppPalette.catSkillWhite,
      foregroundColor: AppPalette.malibu,
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppPalette.white,
        fontFamily: AppFont.ibmPlexSans,
      ),
      disableTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppPalette.slateGray,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
  );

  static final ThemePair<InputFieldStyle> inputField = ThemePair(
    light: InputFieldStyle(
      labelTextStyle: TextStyle(
        color: AppPalette.geyser,
        fontFamily: AppFont.ibmPlexSans,
      ),
      hintTextStyle: TextStyle(
        color: AppPalette.geyser,
        fontFamily: AppFont.ibmPlexSans,
      ),
      textStyle: TextStyle(
        color: AppPalette.geyser,
        fontFamily: AppFont.ibmPlexSans,
      ),
      errorLabelTextStyle: TextStyle(
        color: AppPalette.radicalRed,
        fontFamily: AppFont.ibmPlexSans,
      ),
      errorTextStyle: TextStyle(
        color: AppPalette.radicalRed,
        fontFamily: AppFont.ibmPlexSans,
      ),
      cursorColor: AppPalette.malibu,
      borderColor: AppPalette.catSkillWhite,
      focusBorderColor: AppPalette.catSkillWhite,
      errorBorderColor: AppPalette.radicalRed,
      prefixIconColor: AppPalette.gullGray,
      suffixIconColor: AppPalette.gullGray,
    ),
    dark: InputFieldStyle(
      labelTextStyle: TextStyle(
        color: AppPalette.geyser,
        fontFamily: AppFont.ibmPlexSans,
      ),
      hintTextStyle: TextStyle(
        color: AppPalette.geyser,
        fontFamily: AppFont.ibmPlexSans,
      ),
      textStyle: TextStyle(
        color: AppPalette.geyser,
        fontFamily: AppFont.ibmPlexSans,
      ),
      errorLabelTextStyle: TextStyle(
        color: AppPalette.radicalRed,
        fontFamily: AppFont.ibmPlexSans,
      ),
      errorTextStyle: TextStyle(
        color: AppPalette.radicalRed,
        fontFamily: AppFont.ibmPlexSans,
      ),
      cursorColor: AppPalette.malibu,
      borderColor: AppPalette.catSkillWhite,
      focusBorderColor: AppPalette.catSkillWhite,
      errorBorderColor: AppPalette.radicalRed,
      prefixIconColor: AppPalette.gullGray,
      suffixIconColor: AppPalette.gullGray,
    ),
  );

  static final ThemePair<ProductCardStyle> productCard = ThemePair(
    light: ProductCardStyle(
      imageBackgroundColor: AppPalette.athensGray,
      nameTextStyle: TextStyle(
        fontSize: 14,
        color: AppPalette.black,
        fontFamily: AppFont.ibmPlexSans,
      ),
      descriptionTextStyle: TextStyle(
        fontSize: 14,
        color: AppPalette.black,
        fontFamily: AppFont.ibmPlexSans,
      ),
      amountTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppPalette.black,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
    dark: ProductCardStyle(
      imageBackgroundColor: AppPalette.athensGray,
      nameTextStyle: TextStyle(
        fontSize: 14,
        color: AppPalette.black,
        fontFamily: AppFont.ibmPlexSans,
      ),
      descriptionTextStyle: TextStyle(
        fontSize: 14,
        color: AppPalette.black,
        fontFamily: AppFont.ibmPlexSans,
      ),
      amountTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppPalette.black,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
  );

  static final ThemePair<CartItemStyle> cartItem = ThemePair(
    light: CartItemStyle(
      backgroundColor: AppPalette.athensGray,
      deleteIconColor: AppPalette.dustyGray,
      deleteIconBackgroundColor: AppPalette.white,
      decreaseItemCountIconColor: AppPalette.slateGray,
      decreaseItemCountIconBackgroundColor: AppPalette.catSkillWhite,
      increaseItemCountIconColor: AppPalette.pickledBluewood,
      increaseItemCountIconBackgroundColor: AppPalette.white,
      increaseItemCountIconBorderColor: AppPalette.catSkillWhite,
      itemNameTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemAmountTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemInStockTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.mountainMeadow,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemOutStockTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.radicalRed,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemCountTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
    dark: CartItemStyle(
      backgroundColor: AppPalette.athensGray,
      deleteIconColor: AppPalette.dustyGray,
      deleteIconBackgroundColor: AppPalette.white,
      decreaseItemCountIconColor: AppPalette.slateGray,
      decreaseItemCountIconBackgroundColor: AppPalette.catSkillWhite,
      increaseItemCountIconColor: AppPalette.pickledBluewood,
      increaseItemCountIconBackgroundColor: AppPalette.white,
      increaseItemCountIconBorderColor: AppPalette.catSkillWhite,
      itemNameTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemAmountTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemInStockTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.mountainMeadow,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemOutStockTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.radicalRed,
        fontFamily: AppFont.ibmPlexSans,
      ),
      itemCountTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppPalette.pickledBluewood,
        fontFamily: AppFont.ibmPlexSans,
      ),
    ),
  );
}

class AppStyleExtetension extends ThemeExtension<AppStyleExtetension> {
  final ToastStyle toastStyle;
  final BottomNavStyle bottomNavStyle;
  final CustomButtonStyle customButtonStyle;
  final InputFieldStyle inputFieldStyle;
  final ProductCardStyle productCardStyle;
  final CartItemStyle cartItemStyle;

  AppStyleExtetension({
    required this.toastStyle,
    required this.bottomNavStyle,
    required this.customButtonStyle,
    required this.inputFieldStyle,
    required this.productCardStyle,
    required this.cartItemStyle,
  });

  @override
  AppStyleExtetension copyWith({
    ToastStyle? toastStyle,
    BottomNavStyle? bottomNavStyle,
    CustomButtonStyle? customButtonStyle,
    InputFieldStyle? inputFieldStyle,
    ProductCardStyle? productCardStyle,
    CartItemStyle? cartItemStyle,
  }) {
    return AppStyleExtetension(
      toastStyle: toastStyle ?? this.toastStyle,
      bottomNavStyle: bottomNavStyle ?? this.bottomNavStyle,
      customButtonStyle: customButtonStyle ?? this.customButtonStyle,
      inputFieldStyle: inputFieldStyle ?? this.inputFieldStyle,
      productCardStyle: productCardStyle ?? this.productCardStyle,
      cartItemStyle: cartItemStyle ?? this.cartItemStyle,
    );
  }

  @override
  ThemeExtension<AppStyleExtetension> lerp(
    covariant ThemeExtension<AppStyleExtetension>? other,
    double t,
  ) {
    return this;
  }
}
