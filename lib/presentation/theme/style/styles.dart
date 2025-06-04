import 'package:flutter/material.dart';

class ToastStyle {
  final Color backgroundColor;
  final Color borderColor;
  final Color checkIconColor;
  final Color closeIconColor;
  final TextStyle textStyle;
  ToastStyle({
    required this.backgroundColor,
    required this.borderColor,
    required this.checkIconColor,
    required this.closeIconColor,
    required this.textStyle,
  });

  ToastStyle copyWith({
    Color? backgroundColor,
    Color? borderColor,
    Color? checkIconColor,
    Color? closeIconColor,
    TextStyle? textStyle,
  }) {
    return ToastStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      checkIconColor: checkIconColor ?? this.checkIconColor,
      closeIconColor: closeIconColor ?? this.closeIconColor,
      textStyle: textStyle ?? this.textStyle,
    );
  }
}

class BottomNavStyle {
  final Color backgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color selectedAreaColor;
  final Color unselectedAreaColor;
  final TextStyle selectedLabelStyle;
  final TextStyle unselectedLabelStyle;
  final double selectedFontSize;
  final double unselectedFontSize;
  final double iconSize;
  BottomNavStyle({
    required this.backgroundColor,
    required this.selectedItemColor,
    required this.unselectedItemColor,
    required this.selectedAreaColor,
    required this.unselectedAreaColor,
    required this.selectedLabelStyle,
    required this.unselectedLabelStyle,
    required this.selectedFontSize,
    required this.unselectedFontSize,
    required this.iconSize,
  });

  BottomNavStyle copyWith({
    Color? backgroundColor,
    Color? selectedItemColor,
    Color? unselectedItemColor,
    Color? selectedAreaColor,
    Color? unselectedAreaColor,
    TextStyle? selectedLabelStyle,
    TextStyle? unselectedLabelStyle,
    double? selectedFontSize,
    double? unselectedFontSize,
    double? iconSize,
  }) {
    return BottomNavStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      selectedItemColor: selectedItemColor ?? this.selectedItemColor,
      unselectedItemColor: unselectedItemColor ?? this.unselectedItemColor,
      selectedAreaColor: selectedAreaColor ?? this.selectedAreaColor,
      unselectedAreaColor: unselectedAreaColor ?? this.unselectedAreaColor,
      selectedLabelStyle: selectedLabelStyle ?? this.selectedLabelStyle,
      unselectedLabelStyle: unselectedLabelStyle ?? this.unselectedLabelStyle,
      selectedFontSize: selectedFontSize ?? this.selectedFontSize,
      unselectedFontSize: unselectedFontSize ?? this.unselectedFontSize,
      iconSize: iconSize ?? this.iconSize,
    );
  }
}

class CustomButtonStyle {
  final Color color;
  final Color disableColor;
  final Color foregroundColor;
  final TextStyle textStyle;
  final TextStyle disableTextStyle;
  final BorderRadius borderRadius;
  CustomButtonStyle({
    required this.color,
    required this.disableColor,
    required this.foregroundColor,
    required this.textStyle,
    required this.disableTextStyle,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  CustomButtonStyle copyWith({
    Color? color,
    Color? disableColor,
    Color? foregroundColor,
    TextStyle? textStyle,
    TextStyle? disableTextStyle,
    BorderRadius? borderRadius,
  }) {
    return CustomButtonStyle(
      color: color ?? this.color,
      disableColor: disableColor ?? this.disableColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      textStyle: textStyle ?? this.textStyle,
      disableTextStyle: disableTextStyle ?? this.disableTextStyle,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}

class InputFieldStyle {
  final TextStyle labelTextStyle;
  final TextStyle hintTextStyle;
  final TextStyle textStyle;
  final TextStyle errorLabelTextStyle;
  final TextStyle errorTextStyle;
  final Color cursorColor;
  final Color borderColor;
  final Color focusBorderColor;
  final Color errorBorderColor;
  final Color prefixIconColor;
  final Color suffixIconColor;
  InputFieldStyle({
    required this.labelTextStyle,
    required this.hintTextStyle,
    required this.textStyle,
    required this.errorLabelTextStyle,
    required this.errorTextStyle,
    required this.cursorColor,
    required this.borderColor,
    required this.focusBorderColor,
    required this.errorBorderColor,
    required this.prefixIconColor,
    required this.suffixIconColor,
  });

  InputFieldStyle copyWith({
    TextStyle? labelTextStyle,
    TextStyle? hintTextStyle,
    TextStyle? textStyle,
    TextStyle? errorLabelTextStyle,
    TextStyle? errorTextStyle,
    Color? cursorColor,
    Color? borderColor,
    Color? focusBorderColor,
    Color? errorBorderColor,
    Color? prefixIconColor,
    Color? suffixIconColor,
  }) {
    return InputFieldStyle(
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      hintTextStyle: hintTextStyle ?? this.hintTextStyle,
      textStyle: textStyle ?? this.textStyle,
      errorLabelTextStyle: errorLabelTextStyle ?? this.errorLabelTextStyle,
      errorTextStyle: errorTextStyle ?? this.errorTextStyle,
      cursorColor: cursorColor ?? this.cursorColor,
      borderColor: borderColor ?? this.borderColor,
      focusBorderColor: focusBorderColor ?? this.focusBorderColor,
      errorBorderColor: errorBorderColor ?? this.errorBorderColor,
      prefixIconColor: prefixIconColor ?? this.prefixIconColor,
      suffixIconColor: suffixIconColor ?? this.suffixIconColor,
    );
  }
}

class ProductCardStyle {
  final Color imageBackgroundColor;
  final TextStyle nameTextStyle;
  final TextStyle descriptionTextStyle;
  final TextStyle amountTextStyle;
  final BorderRadius borderRadius;
  ProductCardStyle({
    required this.imageBackgroundColor,
    required this.nameTextStyle,
    required this.descriptionTextStyle,
    required this.amountTextStyle,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  ProductCardStyle copyWith({
    Color? imageBackgroundColor,
    TextStyle? nameTextStyle,
    TextStyle? descriptionTextStyle,
    TextStyle? amountTextStyle,
    BorderRadius? borderRadius,
  }) {
    return ProductCardStyle(
      imageBackgroundColor: imageBackgroundColor ?? this.imageBackgroundColor,
      nameTextStyle: nameTextStyle ?? this.nameTextStyle,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
      amountTextStyle: amountTextStyle ?? this.amountTextStyle,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}

class CartItemStyle {
  final Color backgroundColor;
  final Color deleteIconColor;
  final Color deleteIconBackgroundColor;
  final Color decreaseItemCountIconColor;
  final Color decreaseItemCountIconBackgroundColor;
  final Color increaseItemCountIconColor;
  final Color increaseItemCountIconBackgroundColor;
  final TextStyle itemNameTextStyle;
  final TextStyle itemAmountTextStyle;
  final TextStyle itemInStockTextStyle;
  final TextStyle itemCountTextStyle;
  CartItemStyle({
    required this.backgroundColor,
    required this.deleteIconColor,
    required this.deleteIconBackgroundColor,
    required this.decreaseItemCountIconColor,
    required this.decreaseItemCountIconBackgroundColor,
    required this.increaseItemCountIconColor,
    required this.increaseItemCountIconBackgroundColor,
    required this.itemNameTextStyle,
    required this.itemAmountTextStyle,
    required this.itemInStockTextStyle,
    required this.itemCountTextStyle,
  });

  CartItemStyle copyWith({
    Color? backgroundColor,
    Color? deleteIconColor,
    Color? deleteIconBackgroundColor,
    Color? decreaseItemCountIconColor,
    Color? decreaseItemCountIconBackgroundColor,
    Color? increaseItemCountIconColor,
    Color? increaseItemCountIconBackgroundColor,
    TextStyle? itemNameTextStyle,
    TextStyle? itemAmountTextStyle,
    TextStyle? itemInStockTextStyle,
    TextStyle? itemCountTextStyle,
  }) {
    return CartItemStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      deleteIconColor: deleteIconColor ?? this.deleteIconColor,
      deleteIconBackgroundColor:
          deleteIconBackgroundColor ?? this.deleteIconBackgroundColor,
      decreaseItemCountIconColor:
          decreaseItemCountIconColor ?? this.decreaseItemCountIconColor,
      decreaseItemCountIconBackgroundColor:
          decreaseItemCountIconBackgroundColor ??
          this.decreaseItemCountIconBackgroundColor,
      increaseItemCountIconColor:
          increaseItemCountIconColor ?? this.increaseItemCountIconColor,
      increaseItemCountIconBackgroundColor:
          increaseItemCountIconBackgroundColor ??
          this.increaseItemCountIconBackgroundColor,
      itemNameTextStyle: itemNameTextStyle ?? this.itemNameTextStyle,
      itemAmountTextStyle: itemAmountTextStyle ?? this.itemAmountTextStyle,
      itemInStockTextStyle: itemInStockTextStyle ?? this.itemInStockTextStyle,
      itemCountTextStyle: itemCountTextStyle ?? this.itemCountTextStyle,
    );
  }
}
