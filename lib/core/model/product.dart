import 'dart:convert';
import 'dart:ui';

class Product {
  final String id;
  final String name;
  final String image;
  final String colorHex;
  final num amount;
  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.colorHex,
    required this.amount,
  });

  Product copyWith({
    String? id,
    String? name,
    String? image,
    String? colorHex,
    num? amount,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      colorHex: colorHex ?? this.colorHex,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'colorHex': colorHex,
      'amount': amount,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      colorHex: map['colorHex'] ?? '',
      amount: map['amount'] ?? 0,
    );
  }

  Color get color => _hexToColor(colorHex);

  Color _hexToColor(String hex) {
    hex = hex.replaceAll("#", "");
    if (hex.length == 6) hex = "FF$hex";
    return Color(int.parse(hex, radix: 16));
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, image: $image, colorHex: $colorHex, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.image == image &&
        other.colorHex == colorHex &&
        other.amount == amount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        colorHex.hashCode ^
        amount.hashCode;
  }
}
