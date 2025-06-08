import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/presentation/component/cart_item_tile.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';
import 'package:mini_mart/presentation/component/pop_button.dart';
import 'package:mini_mart/presentation/provider/cart_provider.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
            PopButton(title: 'Your Cart'),
            Expanded(
              child: Container(
                color: theme.appColors.backgroundColor,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: Consumer(
                  builder: (context, ref, child) {
                    final cartItems = ref.watch(cartProvider);
                    if (cartItems.isEmpty) {
                      return Center(
                        child: Text(
                          'Your cart is empty',
                          style: theme.appTextStyles.title1,
                        ),
                      );
                    }
                    return ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        final item = cartItems[index];
                        return CartItemTile(
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
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
