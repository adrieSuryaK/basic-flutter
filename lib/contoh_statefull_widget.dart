import 'package:flutter/material.dart';

class ContohStatefullWidget extends StatefulWidget {
  const ContohStatefullWidget({Key? key}) : super(key: key);

  @override
  _ContohStatefullWidgetState createState() => _ContohStatefullWidgetState();
}

class _ContohStatefullWidgetState extends State<ContohStatefullWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text('nilai hitung: $count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
