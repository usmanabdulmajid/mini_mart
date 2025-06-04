import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';
import 'package:mini_mart/presentation/component/search_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SearchTextField(),
            ),
          ],
        ),
      ),
    );
  }
}
