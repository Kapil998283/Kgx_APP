import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ✅ FIXED

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KGX App',
      theme: ThemeData.dark(), // You can customize this
      home: const SplashScreenPage(), // ✅ FIXED
    );
  }
}
