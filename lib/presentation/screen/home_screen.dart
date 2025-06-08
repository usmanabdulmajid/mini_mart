import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/images/app_images.dart';
import 'package:mini_mart/core/model/product.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';
import 'package:mini_mart/presentation/component/pop_button.dart';
import 'package:mini_mart/presentation/component/product_card.dart';
import 'package:mini_mart/presentation/component/search_textfield.dart';
import 'package:mini_mart/presentation/provider/product_provider.dart';
import 'package:mini_mart/presentation/screen/product_detail_screen.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final shimmerData = Product(
    id: '8',
    name: 'Mechanical Gaming Keyboard',
    image: AppImages.macbookPro,
    colorHex: '#9C27B0',
    amount: 189.99,
    shippingFee: 11.99,
    quantity: 6,
    descriptions: [],
    inCart: false,
    inStock: true,
    isFavourite: true,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.appColors.primary,
        body: Column(
          children: [
            CustomAppbar(),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SearchTextField(),
            ),
            const Gap(12),
            Divider(
              height: 1,
              color: theme.appColors.dividerColor,
              thickness: 1,
            ),
            PopButton(title: 'Technology'),
            Expanded(
              child: Container(
                color: theme.appColors.backgroundColor,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smartphones, Laptops & Assecories',
                      style: theme.appTextStyles.title2,
                    ),
                    const Gap(8),
                    Consumer(
                      builder: (context, ref, child) {
                        final productAsyncValue = ref.watch(productsProvider);
                        return productAsyncValue.when(
                          data: (products) {
                            return Expanded(
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 12,
                                      mainAxisSpacing: 12,
                                      childAspectRatio: 0.65,
                                    ),
                                itemCount: products.length,
                                itemBuilder: (context, index) {
                                  final product = products[index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => ProductDetailScreen(
                                                product: product,
                                              ),
                                        ),
                                      );
                                    },
                                    child: ProductCard(product: product),
                                  );
                                },
                              ),
                            );
                          },
                          loading:
                              () => Expanded(
                                child: Skeletonizer(
                                  enabled: true,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 12,
                                          mainAxisSpacing: 12,
                                          childAspectRatio: 0.65,
                                        ),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return ProductCard(product: shimmerData);
                                    },
                                  ),
                                ),
                              ),
                          error:
                              (error, stackTrace) =>
                                  Center(child: Text('Error: $error')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
