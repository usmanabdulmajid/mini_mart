import 'package:flutter/material.dart';
import 'package:mini_mart/presentation/component/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(children: [CustomAppbar()])));
  }
}
