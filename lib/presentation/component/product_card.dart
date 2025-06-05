import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/images/app_images.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

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
          child: Image.asset(AppImages.macbookPro),
        ),
        const Gap(5.17),
        Text('M4 Macbook Air 13” 256GB|Sky blue', style: theme.nameTextStyle),
        const Gap(5.17),
        Text('\$1000.00', style: theme.amountTextStyle),
      ],
    );
  }
}
