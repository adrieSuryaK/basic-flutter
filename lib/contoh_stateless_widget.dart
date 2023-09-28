import 'package:flutter/material.dart';

class ContohStatelessWidget extends StatelessWidget {
  const ContohStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Pertama'),
      ),
      body: Center(
        child: Text('Contoh Stateless Widget'),
      ),
    );
  }
}
