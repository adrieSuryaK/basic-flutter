import 'package:flutter/material.dart';
// import 'contoh_stateless_widget.dart';
// import 'contoh_statefull_widget.dart';
// import 'contoh_widget.dart';
import 'beranda_restoran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Pertama',
      home: BerandaRestoran(
        imageUrl3: 'https://64.media.tumblr.com/avatar_1702307b08b0_128.pnj',
      ),
    );
  }
}
