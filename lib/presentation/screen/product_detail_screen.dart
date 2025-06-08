import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/model/product.dart';
import 'package:mini_mart/presentation/component/bullet_list_widget.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';
import 'package:mini_mart/presentation/component/custom_button.dart';
import 'package:mini_mart/presentation/component/pop_button.dart';
import 'package:mini_mart/presentation/component/product_detail_card.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.appColors.primary,
        body: Column(
          children: [
            CustomAppbar(),
            Gap(12),
            Divider(
              height: 1,
              color: theme.appColors.dividerColor,
              thickness: 1,
            ),
            PopButton(title: 'Go back'),
            Expanded(
              child: Container(
                color: theme.appColors.backgroundColor,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: ListView(
                  children: [
                    ProductDetailCard(product),
                    BulletListWidget(
                      title: 'About this item ',
                      items: product.descriptions,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 90,
          padding: const EdgeInsets.fromLTRB(18.8, 12, 18.8, 6),
          decoration: BoxDecoration(
            color: theme.appColors.primary,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 5,
                offset: Offset(0, -2),
              ),
            ],
          ),
          alignment: Alignment.topCenter,
          child: CustomButton(text: 'Add to Cart', onPressed: () {}),
        ),
      ),
    );
  }
}

final list = [
  'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
  'Refurbished products on Amazon Renewed have been inspected and tested by qualified suppliers to work and look like new.',
  'Products are packaged in a generic box with all relevant accessories.',
  'Renewed products come with a minimum 90-day supplier-backed warranty.',
  'This product is eligible for a replacement or refund within 90 days of receipt if you are not satisfied.',
  'There will be no visible cosmetic imperfections when held at an arm’s length. There will be no visible cosmetic imperfections when held at an arm’s length.',
  'This product will have a battery which exceeds 80% capacity relative to new. Accessories will not be original, but will be compatible and fully functional. Product may come in generic Box.',
  'This product is eligible for a replacement or refund within 90 days of receipt if you are not satisfied.',
];
