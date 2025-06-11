import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/presentation/component/cart_item_tile.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';
import 'package:mini_mart/presentation/component/custom_button.dart';
import 'package:mini_mart/presentation/component/order_info_tile.dart';
import 'package:mini_mart/presentation/component/pop_button.dart';
import 'package:mini_mart/presentation/provider/cart_provider.dart';
import 'package:mini_mart/presentation/screen/home.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  final num _shippingFee = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            PopButton(
              title: 'Your Cart',
              onPressed: () {
                ref.read(pageIndexProvider.notifier).state = 0;
              },
            ),
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final cartItems = ref.watch(cartProvider);
                  if (cartItems.isEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppIcons.cart, height: 80, width: 80),
                        const Gap(8),
                        Text(
                          'Nothing here yet',
                          style: theme.appTextStyles.subtitle1,
                        ),
                        Text(
                          'Add something to your cart to get started.',
                          style: theme.appTextStyles.body1,
                        ),
                      ],
                    );
                  }
                  return Container(
                    color: theme.appColors.backgroundColor,
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: ListView(
                      children: [
                        ...cartItems.map(
                          (item) => CartItemTile(
                            item: item,
                            onIncrease:
                                () => ref
                                    .read(cartProvider.notifier)
                                    .increaseQuantity(item.id),
                            onDecrease:
                                () => ref
                                    .read(cartProvider.notifier)
                                    .decreaseQuantity(item.id),
                            onRemove:
                                () => ref
                                    .read(cartProvider.notifier)
                                    .removeItem(item.id),
                          ),
                        ),
                        OrderInfoTile(
                          subtotal: ref.watch(cartTotalProvider),
                          shippingFee: _shippingFee,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Consumer(
          builder: (context, ref, child) {
            final totalAmount = ref.watch(cartTotalProvider);
            if (totalAmount <= 0) {
              return SizedBox();
            }
            return Container(
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
              child: CustomButton(
                text:
                    'Checkout (\$${(totalAmount + _shippingFee).toStringAsFixed(2)})',
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
