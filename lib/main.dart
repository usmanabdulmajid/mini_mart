import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mart/app.dart';
import 'package:mini_mart/injection_container.dart';

Future<void> main() async {
  await setup();
  runApp(ProviderScope(child: const App()));
}
