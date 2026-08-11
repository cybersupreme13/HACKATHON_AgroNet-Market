import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              children: [

                // =========================
                // LOGO
                // =========================
                const SizedBox(height: 15),

                Image.asset(
                  'assets/images/logo.png',
                  width: 320,
                  fit: BoxFit.contain,
                ),

                // =========================
                // ESPACIO
                // =========================
                const SizedBox(height: 20),

                // =========================
                // ESLOGAN
                // =========================
                const Text(
                  'Del campo a\ntu mesa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    height: 1.15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFFFF6A00),
                  ),
                ),

                // =========================
                // DESCRIPCIÓN
                // =========================
                const SizedBox(height: 18),

                const Text(
                  'Compra auténtica, apoyo local,\n'
                  'recibe lo mejor de la tierra.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                // =========================
                // ESPACIO ANTES DEL BOTÓN
                // =========================
                const SizedBox(height: 48),

                // =========================
                // BOTÓN INICIAR SESIÓN
                // =========================
                SizedBox(
                  width: double.infinity,
                  height: 78,
                  child: ElevatedButton(
                    onPressed: () {
                      // Ir a inicio de sesión
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7777F2),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // =========================
                // CREAR CUENTA
                // =========================
                const SizedBox(height: 35),

                TextButton(
                  onPressed: () {
                    // Ir a crear cuenta
                  },
                  child: const Text(
                    'Crear una nueva cuenta',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF999999),
                    ),
                  ),
                ),

                // Espacio inferior para poder deslizar cómodamente
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}