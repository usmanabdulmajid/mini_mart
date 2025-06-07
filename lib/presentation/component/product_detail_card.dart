import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/core/images/app_images.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    ;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 331.6,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: theme.appStyles.productCardStyle.imageBackgroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(AppImages.macbookPro),
            ),
            Align(
              alignment: Alignment.topRight,
              child: FavoriteButton(isFavorite: true),
            ),
          ],
        ),
        const Gap(10.58),
        Text(
          'M4 Macbook Air 13” 256GB|Sky blue',
          style: theme.appTextStyles.subtitle1,
        ),
        const Gap(4),
        Text('\$1000.00', style: theme.appTextStyles.header1),
      ],
    );
  }
}

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  const FavoriteButton({super.key, this.isFavorite = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      margin: EdgeInsets.only(top: 11, right: 14),
      decoration: BoxDecoration(
        color: Theme.of(context).appColors.primary,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        isFavorite ? AppIcons.favouriteFilled : AppIcons.favourite,
      ),
    );
  }
}
