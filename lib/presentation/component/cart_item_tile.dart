import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/core/model/cart_item.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class CartItemTile extends StatelessWidget {
  final CartItem item;
  final VoidCallback? onIncrease;
  final VoidCallback? onDecrease;
  final VoidCallback? onRemove;

  const CartItemTile({
    super.key,
    required this.item,
    this.onIncrease,
    this.onDecrease,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).appStyles.cartItemStyle;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                item.image,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[100],
                    child: Icon(Icons.image, size: 40, color: Colors.grey[400]),
                  );
                },
              ),
            ),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: theme.itemNameTextStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Gap(4),
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
                  style: theme.itemAmountTextStyle,
                ),
                const Gap(4),
                Text(
                  item.inStock ? 'In stock' : 'Out of stock',
                  style:
                      item.inStock
                          ? theme.itemInStockTextStyle
                          : theme.itemOutStockTextStyle,
                ),
                const Gap(8),
                Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.decreaseItemCountIconBackgroundColor,
                      ),
                      child: IconButton(
                        onPressed: item.quantity > 1 ? onDecrease : null,
                        padding: EdgeInsets.zero,
                        icon: SvgPicture.asset(AppIcons.minus),
                      ),
                    ),
                    const Gap(16),
                    SizedBox(
                      width: 24,
                      child: Text(
                        '${item.quantity}',
                        textAlign: TextAlign.center,
                        style: theme.itemCountTextStyle,
                      ),
                    ),
                    const Gap(16),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.increaseItemCountIconBackgroundColor,
                        border: Border.all(
                          color: theme.increaseItemCountIconBorderColor,
                          width: 1,
                        ),
                      ),
                      child: IconButton(
                        onPressed: onIncrease,
                        padding: EdgeInsets.zero,
                        icon: SvgPicture.asset(AppIcons.add),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.deleteIconBackgroundColor,
                      ),
                      child: IconButton(
                        onPressed: onRemove,
                        padding: EdgeInsets.zero,
                        icon: SvgPicture.asset(
                          AppIcons.delete,
                          color: theme.deleteIconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
