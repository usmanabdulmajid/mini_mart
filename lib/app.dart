import 'package:flutter/material.dart';
import 'package:mini_mart/presentation/screen/home.dart';
import 'package:mini_mart/presentation/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatie',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      home: const Home(),
    );
  }
}
