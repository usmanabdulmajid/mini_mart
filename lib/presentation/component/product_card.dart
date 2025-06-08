import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/model/product.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).appStyles.productCardStyle;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 162,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.imageBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Hero(
            tag: product.id,
            transitionOnUserGestures: true,
            child: Image.asset(product.image),
          ),
        ),
        const Gap(5.17),
        Text(product.name, style: theme.nameTextStyle),
        const Gap(5.17),
        Text('\$${product.amount}', style: theme.amountTextStyle),
      ],
    );
  }
}
