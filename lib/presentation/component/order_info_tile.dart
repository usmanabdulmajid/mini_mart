import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class OrderInfoTile extends StatelessWidget {
  final num subtotal;
  final num shippingFee;
  const OrderInfoTile({
    super.key,
    required this.subtotal,
    required this.shippingFee,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).appTextStyles;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Order Info', style: theme.header5),
        const Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: theme.header6),
            Text('\$${subtotal.toStringAsFixed(2)}', style: theme.header6),
          ],
        ),
        const Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: theme.header6),
            Text('\$${shippingFee.toStringAsFixed(2)}', style: theme.header6),
          ],
        ),
        const Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: theme.header5),
            Text(
              '\$${(subtotal + shippingFee).toStringAsFixed(2)}',
              style: theme.header5,
            ),
          ],
        ),
      ],
    );
  }
}
