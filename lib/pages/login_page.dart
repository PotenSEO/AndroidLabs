import 'package:flutter/material.dart';
import 'package:Androidlab/pages/register_page.dart';
import 'package:Androidlab/pages/menu_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  late final mensaje msg;

  void validarUsuario() async {
    mensaje(this.context);
    try {
      final user = await auth.signInWithEmailAndPassword(
          email: _email.text, password: _password.text);
      if (user != null) {
        msg.mostrarMensaje("Bienvenido!!!!");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MenuPage()));
      }
    } on FirebaseAuthException catch (e) {
      //most-rarMensaje("${e.code}");

      if (e.code == "invalid-email") {
        msg.mostrarMensaje("El formato del Email no es correcto.");
      } else if (e.code == "user-not-found") {
        msg.mostrarMensaje("El usuario no esta registrado.");
      } else if (e.code == "wrong-password") {
        msg.mostrarMensaje("Contraseña Incorrecta.");
      } else if (e.code == "unknown") {
        msg.mostrarMensaje("Complete los datos.");
      } else if (e.code == "network-request-failed") {
        msg.mostrarMensaje("Revise su conexion a internet.");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    msg = mensaje(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Iniciar Sesion',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Icon(
                  Icons.login,
                  size: 90,
                ),
                const SizedBox(
                  height: 16.0,
                ),

                const SizedBox(
                  height: 16.0,
                ),

                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Correo Electronico'),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _password,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Contraseña'),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    validarUsuario();
                  },
                  child: const Text('Iniciar sesion'),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text('Registrarse')),
                // Text(
                //   _data,
                //   style: const TextStyle(
                //       fontSize: 12, fontStyle: FontStyle.italic),
                //)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class mensaje {
  late BuildContext context;
  mensaje(this.context);
  void mostrarMensaje(String mensaje) {
    final pantalla = ScaffoldMessenger.of(context);
    pantalla.showSnackBar(SnackBar(
      content: Text(
        mensaje,
        style: const TextStyle(fontSize: 20),
      ),
      backgroundColor: const Color(0xFF263238),
      duration: const Duration(seconds: 10),
      action: SnackBarAction(
          label: 'Registrese',
          onPressed: () {
            pantalla.hideCurrentSnackBar;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => register_page()));
          }),
    ));
  }

  void mensajeOk(String mensaje) {
    final pantalla = ScaffoldMessenger.of(context);
    pantalla.showSnackBar(SnackBar(
      content: Text(
        mensaje,
        style: const TextStyle(fontSize: 20),
      ),
      backgroundColor: const Color(0xFF4CAF50),
      duration: const Duration(seconds: 10),
    ));
  }

  register_page() {}
}
