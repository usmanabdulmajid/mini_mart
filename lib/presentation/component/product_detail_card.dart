import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/core/model/product.dart';
import 'package:mini_mart/presentation/provider/product_provider.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class ProductDetailCard extends ConsumerStatefulWidget {
  final Product product;
  const ProductDetailCard(this.product, {super.key});

  @override
  ConsumerState<ProductDetailCard> createState() => _ProductDetailCardState();
}

class _ProductDetailCardState extends ConsumerState<ProductDetailCard> {
  late final isFavouriteNotifier = ValueNotifier(widget.product.isFavourite);

  @override
  void dispose() {
    super.dispose();
    isFavouriteNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
              child: Hero(
                tag: widget.product.id,
                transitionOnUserGestures: true,
                child: Image.asset(widget.product.image),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  isFavouriteNotifier.value = !isFavouriteNotifier.value;
                  ref
                      .read(productsProvider.notifier)
                      .toggleFavourite(
                        widget.product.id,
                        isFavouriteNotifier.value,
                      );
                },
                child: ValueListenableBuilder(
                  valueListenable: isFavouriteNotifier,
                  builder: (context, favourite, child) {
                    return FavoriteButton(isFavorite: favourite);
                  },
                ),
              ),
            ),
          ],
        ),
        const Gap(10.58),
        Text(widget.product.name, style: theme.appTextStyles.subtitle1),
        const Gap(4),
        Text('\$${widget.product.amount}', style: theme.appTextStyles.header1),
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
