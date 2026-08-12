import 'package:flutter/material.dart';
import 'crear_cuenta.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),

          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),

              child: Column(
                children: [

                  // ESPACIO SUPERIOR

                  const SizedBox(height: 70),

                  // TÍTULO

                  const Text(
                    'INICIA SESION\nAQUI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      height: 1.25,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFD96B16),
                    ),
                  ),

                  // ESPACIO

                  const SizedBox(height: 50),

                  // EMAIL

                  SizedBox(
                    width: double.infinity,
                    height: 110,

                    child: TextField(
                      keyboardType: TextInputType.emailAddress,

                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF444444),
                      ),

                      decoration: InputDecoration(
                        hintText: 'Email',

                        hintStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF555555),
                        ),

                        filled: true,

                        fillColor: const Color(0xFFD9D9D9),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none,
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none,
                        ),

                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 25,
                        ),
                      ),
                    ),
                  ),

                  // ESPACIO ENTRE EMAIL Y CONTRASEÑA

                  const SizedBox(height: 27),

                  // CONTRASEÑA

                  SizedBox(
                    width: double.infinity,
                    height: 110,

                    child: TextField(
                      obscureText: true,

                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF444444),
                      ),

                      decoration: InputDecoration(
                        hintText: 'Contraseña',

                        hintStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF555555),
                        ),

                        filled: true,

                        fillColor: const Color(0xFFD9D9D9),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none,
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none,
                        ),

                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 25,
                        ),
                      ),
                    ),
                  ),

                  // OLVIDÓ SU CONTRASEÑA

                  const SizedBox(height: 14),

                  Align(
                    alignment: Alignment.centerRight,

                    child: TextButton(
                      onPressed: () {
                        // Recuperar contraseña
                      },

                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                      ),

                      child: const Text(
                        'Olvido su contraseña?',

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  // ESPACIO ANTES DEL BOTÓN

                  const SizedBox(height: 54),

                  // BOTÓN INICIAR SESIÓN

                  SizedBox(
                    width: double.infinity,
                    height: 78,

                    child: ElevatedButton(
                      onPressed: () {
                        // Acción de iniciar sesión
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

                  // ESPACIO

                  const SizedBox(height: 35),

                  // CREAR NUEVA CUENTA

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CrearCuentaScreen(),
                        ),
                      );
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

                  // ESPACIO INFERIOR

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}