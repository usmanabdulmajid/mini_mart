class CartItem {
  final String id;
  final String name;
  final String image;
  final double price;
  final int quantity;
  final bool inStock;

  CartItem({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    required this.inStock,
  });

  CartItem copyWith({
    String? id,
    String? name,
    String? image,
    double? price,
    int? quantity,
    bool? inStock,
  }) {
    return CartItem(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      inStock: inStock ?? this.inStock,
    );
  }

  double get totalPrice => price * quantity;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItem &&
        other.id == id &&
        other.name == name &&
        other.image == image &&
        other.price == price &&
        other.quantity == quantity &&
        other.inStock == inStock;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        price.hashCode ^
        quantity.hashCode ^
        inStock.hashCode;
  }

  @override
  String toString() {
    return 'CartItem(id: $id, name: $name, image: $image, price: $price, quantity: $quantity, inStock: $inStock)';
  }
}
