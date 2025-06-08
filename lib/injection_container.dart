import 'package:get_it/get_it.dart';
import 'package:mini_mart/core/data/product_api.dart';
import 'package:mini_mart/core/data/product_api_impl.dart';

final locator = GetIt.I;

Future<void> setup() async {
  locator.registerLazySingleton<ProductApi>(() => ProductApiImpl());
}
