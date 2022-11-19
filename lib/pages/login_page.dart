import 'package:flutter/material.dart';
import 'package:Androidlab/pages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Iniciar Seccion',
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
                ElevatedButton( onPressed: () {}, child: const Text('Iniciar seccion'),
                ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));

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
