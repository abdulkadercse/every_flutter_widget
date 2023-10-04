import 'package:flutter/material.dart';

class RotatedBoxExample extends StatelessWidget {
  const RotatedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("RotatedBox Example"),),
      body: Center(
        child: const RotatedBox(
          quarterTurns: 3,
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
