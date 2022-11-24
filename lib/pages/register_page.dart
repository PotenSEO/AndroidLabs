import 'package:flutter/material.dart';
import 'package:Androidlab/pages/login_page.dart';
import 'package:Androidlab/pages/splash_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _rePassword = TextEditingController();
  //late final mensaje msg;

  @override
  Widget build(BuildContext context) {
    //msg = mensaje(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Registrarse',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Icon(
                  Icons.app_registration,size: 90,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration (
                      border: UnderlineInputBorder(),
                      labelText: 'Nombre'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Correo Electronico'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _password,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Contraseña'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: _rePassword,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Repita constraseña'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      //_onRegisterButtonClicked();
                    },
                    child: const Text('Registrar')),

                TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

                    },
                    child: const Text('Regresar')),
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
