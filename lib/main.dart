import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const AgroNetApp());
}

class AgroNetApp extends StatelessWidget {
  const AgroNetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agro Net Market',
      home: const SplashScreen(),
      
    );
  }
}