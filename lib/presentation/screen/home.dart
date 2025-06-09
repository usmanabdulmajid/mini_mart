import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/presentation/component/custom_bottom_nav.dart';
import 'package:mini_mart/presentation/provider/cart_provider.dart';
import 'package:mini_mart/presentation/screen/cart_screen.dart';
import 'package:mini_mart/presentation/screen/home_screen.dart';
import 'package:mini_mart/presentation/theme/style/app_palette.dart';

final pageIndexProvider = StateProvider<int>((ref) => 0);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final currentIndex = ref.watch(pageIndexProvider);
        return PopScope(
          canPop: currentIndex == 0,
          onPopInvokedWithResult: (canPop, result) async {
            if (currentIndex != 0) {
              ref.read(pageIndexProvider.notifier).state = 0;
            }
          },
          child: Scaffold(
            body: IndexedStack(
              index: currentIndex,
              children: [
                HomeScreen(),
                CartScreen(),
                Center(child: Text('Favourites Screen')),
                Center(child: Text('Profile Screen')),
              ],
            ),
            bottomNavigationBar: Consumer(
              builder: (context, ref, child) {
                if (currentIndex == 1 && ref.watch(cartProvider).isNotEmpty) {
                  return SizedBox.shrink();
                }
                return CustomBottomNav(
                  currentIndex: currentIndex,
                  onTap: (index) {
                    ref.read(pageIndexProvider.notifier).state = index;
                  },
                  items: [
                    CustomBottomNavItem(
                      icon: SvgPicture.asset(AppIcons.home),
                      activeIcon: SvgPicture.asset(
                        AppIcons.home,
                        color: AppPalette.white,
                      ),
                      label: 'Home',
                    ),
                    CustomBottomNavItem(
                      icon: SvgPicture.asset(AppIcons.cart),
                      activeIcon: SvgPicture.asset(
                        AppIcons.cart,
                        color: AppPalette.white,
                      ),
                      label: 'Cart',
                    ),
                    CustomBottomNavItem(
                      icon: SvgPicture.asset(AppIcons.favourite),
                      activeIcon: SvgPicture.asset(
                        AppIcons.favourite,
                        color: AppPalette.white,
                      ),
                      label: 'Favourites',
                    ),
                    CustomBottomNavItem(
                      icon: SvgPicture.asset(AppIcons.profile),
                      activeIcon: SvgPicture.asset(
                        AppIcons.profile,
                        color: AppPalette.white,
                      ),
                      label: 'Profile',
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
