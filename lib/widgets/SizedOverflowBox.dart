
import 'package:flutter/material.dart';

class SizedOverflowBoxExample extends StatelessWidget {
  const SizedOverflowBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("SizedOverflowBoxExample"),
      ),
      body: Center(child: Container(
        color: Colors.grey,
        child: SizedOverflowBox(
          size: const Size(100, 100),
          child: Container(height: 50.0, width: 150.0, color: Colors.teal),
        ),
      ),),
    );
  }
}


