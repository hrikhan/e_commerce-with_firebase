import 'package:ecommerce_with_firebase/screen/Register_page.dart';
import 'package:ecommerce_with_firebase/screen/Welcome_screen.dart';
import 'package:ecommerce_with_firebase/screen/login.dart';
import 'package:ecommerce_with_firebase/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:RegisterPage(),
    );
  }
}
