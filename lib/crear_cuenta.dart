import 'package:flutter/material.dart';

class CrearCuentaScreen extends StatefulWidget {
  const CrearCuentaScreen({super.key});

  @override
  State<CrearCuentaScreen> createState() => _CrearCuentaScreenState();
}

class _CrearCuentaScreenState extends State<CrearCuentaScreen> {
  String? tipoRegistro;

  final TextEditingController nombreController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmarPasswordController =
      TextEditingController();

  @override
  void dispose() {
    nombreController.dispose();
    telefonoController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmarPasswordController.dispose();
    super.dispose();
  }

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

                  // PARTE SUPERIOR: LOGO + TÍTULO

                  const SizedBox(height: 10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      // LOGO
                      SizedBox(
                        width: 82,
                        height: 82,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),

                      // ESPACIO
                      const SizedBox(width: 5),

                      // TÍTULO
                      const Expanded(
                        child: Text(
                          'CREAR CUENTA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFD96B16),
                          ),
                        ),
                      ),

                      // ESPACIO PARA EQUILIBRAR EL ROW
                      const SizedBox(width: 82),
                    ],
                  ),

                  const SizedBox(height: 28),

                  // NOMBRE

                  _campoTexto(
                    controller: nombreController,
                    hintText: 'Nombre',
                    keyboardType: TextInputType.name,
                  ),

                  const SizedBox(height: 18),

                  // TELÉFONO

                  _campoTexto(
                    controller: telefonoController,
                    hintText: 'Telefono',
                    keyboardType: TextInputType.phone,
                  ),

                  const SizedBox(height: 18),

                  // EMAIL

                  _campoTexto(
                    controller: emailController,
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 18),

                  // CONTRASEÑA

                  _campoTexto(
                    controller: passwordController,
                    hintText: 'Contraseña',
                    obscureText: true,
                  ),

                  const SizedBox(height: 18),

                  // CONFIRMAR CONTRASEÑA

                  _campoTexto(
                    controller: confirmarPasswordController,
                    hintText: 'Confirmar Contraseña',
                    obscureText: true,
                  ),

                  // ESPACIO

                  const SizedBox(height: 42),

                  // ¿CÓMO DESEAS REGISTRARTE?

                  const Text(
                    '¿Cómo deseas registrarte?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 18),
                 
                  // SOY VENDEDOR                 

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tipoRegistro = 'vendedor';
                      });
                    },

                    child: Container(
                      width: double.infinity,
                      height: 112,

                      decoration: BoxDecoration(
                        color: const Color(0xFF579D21),
                        border: tipoRegistro == 'vendedor'
                            ? Border.all(
                                color: Colors.black,
                                width: 3,
                              )
                            : null,
                      ),

                      child: Row(
                        children: [

                          // ICONO
                          SizedBox(
                            width: 125,
                            child: Center(
                              child: Container(
                                width: 62,
                                height: 62,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.5,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.storefront,
                                  color: Colors.black,
                                  size: 38,
                                ),
                              ),
                            ),
                          ),

                          // TEXTO
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),

                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,

                                children: const [

                                  Text(
                                    'Soy Vendedor',
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    ),
                                  ),

                                  SizedBox(height: 2),

                                  Text(
                                    'Ofrece tus productos sin intermediarios.',
                                    style: TextStyle(
                                      fontSize: 17,
                                      height: 1.05,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // SOY CLIENTE

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tipoRegistro = 'cliente';
                      });
                    },

                    child: Container(
                      width: double.infinity,
                      height: 112,

                      decoration: BoxDecoration(
                        color: const Color(0xFFC63225),
                        border: tipoRegistro == 'cliente'
                            ? Border.all(
                                color: Colors.black,
                                width: 3,
                              )
                            : null,
                      ),

                      child: Row(
                        children: [

                          // ICONO
                          SizedBox(
                            width: 125,
                            child: Center(
                              child: Container(
                                width: 62,
                                height: 62,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.5,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.black,
                                  size: 38,
                                ),
                              ),
                            ),
                          ),

                          // TEXTO
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),

                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,

                                children: const [

                                  Text(
                                    'Soy Cliente',
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    ),
                                  ),

                                  SizedBox(height: 2),

                                  Text(
                                    'Compra productos frescos directos\ndel agricultor.',
                                    style: TextStyle(
                                      fontSize: 17,
                                      height: 1.05,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ESPACIO ANTES DEL BOTÓN

                  const SizedBox(height: 60),
                 
                  // BOTÓN CREAR CUENTA                 

                  SizedBox(
                    width: double.infinity,
                    height: 78,

                    child: ElevatedButton(
                      onPressed: () {

                        // Comprobaciones básicas
                        if (nombreController.text.trim().isEmpty ||
                            telefonoController.text.trim().isEmpty ||
                            emailController.text.trim().isEmpty ||
                            passwordController.text.isEmpty ||
                            confirmarPasswordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Completa todos los campos.',
                              ),
                            ),
                          );

                          return;
                        }

                        if (passwordController.text !=
                            confirmarPasswordController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Las contraseñas no coinciden.',
                              ),
                            ),
                          );

                          return;
                        }

                        if (tipoRegistro == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Selecciona cómo deseas registrarte.',
                              ),
                            ),
                          );

                          return;
                        }

                        // Aquí posteriormente conectaremos
                        // Firebase / base de datos.

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Cuenta preparada como ${tipoRegistro == 'vendedor' ? 'Vendedor' : 'Cliente'}.',
                            ),
                          ),
                        );
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
                        'Crear Cuenta',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  
                  // ESPACIO INFERIOR

                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // WIDGET PARA LOS CAMPOS

  Widget _campoTexto({
    required TextEditingController controller,
    required String hintText,
    TextInputType? keyboardType,
    bool obscureText = false,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 82,

      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,

        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF333333),
        ),

        decoration: InputDecoration(
          hintText: hintText,

          hintStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color(0xFF444444),
          ),

          filled: true,
          fillColor: const Color(0xFFD9D9D9),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),

          contentPadding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 20,
          ),
        ),
      ),
    );
  }
}