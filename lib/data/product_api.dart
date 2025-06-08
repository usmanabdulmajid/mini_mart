import 'package:mini_mart/core/model/product.dart';

abstract class ProductApi {
  Future<List<Product>> getProducts();
}
