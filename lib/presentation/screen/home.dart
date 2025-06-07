import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_mart/core/icons/app_icons.dart';
import 'package:mini_mart/presentation/component/custom_bottom_nav.dart';
import 'package:mini_mart/presentation/screen/cart_screen.dart';
import 'package:mini_mart/presentation/screen/home_screen.dart';
import 'package:mini_mart/presentation/theme/style/app_palette.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          CartScreen(),
          Center(child: Text('Favourites Screen')),
          Center(child: Text('Profile Screen')),
        ],
      ),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
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
      ),
    );
  }
}
