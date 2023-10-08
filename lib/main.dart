import 'package:flutter/material.dart';
import 'beranda_restoran.dart';
import 'halaman_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Pertama',
      home: HalamanLogin(),
    );
  }
}
