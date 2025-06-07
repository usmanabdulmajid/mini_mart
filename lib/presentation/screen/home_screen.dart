import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';
import 'package:mini_mart/presentation/component/pop_button.dart';
import 'package:mini_mart/presentation/component/product_card.dart';
import 'package:mini_mart/presentation/component/search_textfield.dart';
import 'package:mini_mart/presentation/screen/product_detail_screen.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.appColors.primary,
        body: Column(
          children: [
            CustomAppbar(),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SearchTextField(),
            ),
            const Gap(12),
            Divider(
              height: 1,
              color: theme.appColors.dividerColor,
              thickness: 1,
            ),
            PopButton(title: 'Technology'),
            Expanded(
              child: Container(
                color: theme.appColors.backgroundColor,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smartphones, Laptops & Assecories',
                      style: theme.appTextStyles.title2,
                    ),
                    const Gap(8),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.65,
                            ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => const ProductDetailScreen(),
                                ),
                              );
                            },
                            child: ProductCard(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
