import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/core/model/cart_item.dart';

class CartNotifier extends Notifier<List<CartItem>> {
  @override
  List<CartItem> build() {
    return [];
  }

  void addItem(CartItem item) {
    final index = state.indexWhere((e) => e.id == item.id);
    if (index >= 0) {
      final existing = state[index];
      state = [
        for (int i = 0; i < state.length; i++)
          if (i == index)
            existing.copyWith(quantity: existing.quantity + item.quantity)
          else
            state[i],
      ];
    } else {
      state = [...state, item];
    }
  }

  void removeItem(String id) {
    state = state.where((item) => item.id != id).toList();
  }

  void updateQuantity(String id, int quantity) {
    if (quantity <= 0) {
      removeItem(id);
    } else {
      state =
          state.map((item) {
            if (item.id == id) {
              return item.copyWith(quantity: quantity);
            }
            return item;
          }).toList();
    }
  }

  void increaseQuantity(String id) {
    final index = state.indexWhere((item) => item.id == id);
    if (index != -1) {
      final item = state[index];
      updateQuantity(id, item.quantity + 1);
    }
  }

  void decreaseQuantity(String id) {
    final index = state.indexWhere((item) => item.id == id);
    if (index != -1) {
      final item = state[index];
      updateQuantity(id, item.quantity - 1);
    }
  }

  void clearCart() {
    state = [];
  }

  double get totalAmount => state.fold(0, (sum, item) => sum + item.totalPrice);
}

final cartProvider = NotifierProvider<CartNotifier, List<CartItem>>(() {
  return CartNotifier();
});

final cartTotalProvider = Provider<double>((ref) {
  final cartItems = ref.watch(cartProvider);
  return cartItems.fold(0, (sum, item) => sum + item.totalPrice);
});
