import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/model/cart_item.dart';
import 'package:mini_mart/presentation/component/cart_item_tile.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';
import 'package:mini_mart/presentation/component/pop_button.dart';
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
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CartItemTile(
                      item: CartItem(
                        id: '',
                        name: 'name',
                        image: 'image',
                        price: 2,
                        quantity: 2,
                      ),
                      onIncrease: () {},
                      onDecrease: () {},
                      onRemove: () {},
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
