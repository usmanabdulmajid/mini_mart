import 'dart:convert';

import 'package:flutter/foundation.dart';

class ProductDetail {
  final String id;
  final String name;
  final String image;
  final String colorHex;
  final num amount;
  final num shippingFee;
  final int quantity;
  final List<String> descriptions;
  final bool inCart;
  final bool inStock;
  final bool isFavourite;

  ProductDetail({
    required this.id,
    required this.name,
    required this.image,
    required this.colorHex,
    required this.amount,
    required this.shippingFee,
    required this.quantity,
    required this.descriptions,
    required this.inCart,
    required this.inStock,
    required this.isFavourite,
  });

  ProductDetail copyWith({
    String? id,
    String? name,
    String? image,
    String? colorHex,
    num? amount,
    num? shippingFee,
    int? quantity,
    List<String>? descriptions,
    bool? inCart,
    bool? inStock,
    bool? isFavourite,
  }) {
    return ProductDetail(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      colorHex: colorHex ?? this.colorHex,
      amount: amount ?? this.amount,
      shippingFee: shippingFee ?? this.shippingFee,
      quantity: quantity ?? this.quantity,
      descriptions: descriptions ?? this.descriptions,
      inCart: inCart ?? this.inCart,
      inStock: inStock ?? this.inStock,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'colorHex': colorHex,
      'amount': amount,
      'shippingFee': shippingFee,
      'quantity': quantity,
      'descriptions': descriptions,
      'inCart': inCart,
      'inStock': inStock,
      'isFavourite': isFavourite,
    };
  }

  factory ProductDetail.fromMap(Map<String, dynamic> map) {
    return ProductDetail(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      colorHex: map['colorHex'] ?? '',
      amount: map['amount'] ?? 0,
      shippingFee: map['shippingFee'] ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      descriptions: List<String>.from(map['descriptions']),
      inCart: map['inCart'] ?? false,
      inStock: map['inStock'] ?? false,
      isFavourite: map['isFavourite'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDetail.fromJson(String source) =>
      ProductDetail.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductDetail(id: $id, name: $name, image: $image, colorHex: $colorHex, amount: $amount, shippingFee: $shippingFee, quantity: $quantity, descriptions: $descriptions, inCart: $inCart, inStock: $inStock, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductDetail &&
        other.id == id &&
        other.name == name &&
        other.image == image &&
        other.colorHex == colorHex &&
        other.amount == amount &&
        other.shippingFee == shippingFee &&
        other.quantity == quantity &&
        listEquals(other.descriptions, descriptions) &&
        other.inCart == inCart &&
        other.inStock == inStock &&
        other.isFavourite == isFavourite;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        colorHex.hashCode ^
        amount.hashCode ^
        shippingFee.hashCode ^
        quantity.hashCode ^
        descriptions.hashCode ^
        inCart.hashCode ^
        inStock.hashCode ^
        isFavourite.hashCode;
  }
}
