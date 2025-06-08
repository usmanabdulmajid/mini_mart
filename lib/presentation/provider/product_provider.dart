import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/core/data/product_api.dart';
import 'package:mini_mart/core/model/product.dart';
import 'package:mini_mart/injection_container.dart';

class ProductNotifier extends AsyncNotifier<List<Product>> {
  @override
  Future<List<Product>> build() async {
    return locator.get<ProductApi>().getProducts();
  }

  void toggleFavourite(String id, bool isFavourite) {
    state = AsyncValue.data(
      state.value!.map((p) {
        if (p.id == id) {
          return p.copyWith(isFavourite: isFavourite);
        }
        return p;
      }).toList(),
    );
  }
}

final productsProvider = AsyncNotifierProvider<ProductNotifier, List<Product>>(
  () => ProductNotifier(),
);
