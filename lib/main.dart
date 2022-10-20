import 'package:flutter/material.dart';
import 'package:flutterprojects/pages/login_page.dart';
import 'package:flutterprojects/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'AndroidLab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,

      ),
      home: const LoginPage(),
    );
  }
}

