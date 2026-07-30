import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Agro Net Market"),
        backgroundColor: Colors.green,
      ),

      body: const Center(
        child: Text(
          "Bienvenido a Agro Net Market",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}