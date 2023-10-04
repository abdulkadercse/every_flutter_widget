import 'package:flutter/material.dart';

/// Flutter code sample for [InkWell].

class InkWellExample extends StatefulWidget {
  const InkWellExample({super.key});

  @override
  State<InkWellExample> createState() => _InkWellExampleState();
}

class _InkWellExampleState extends State<InkWellExample> {
  double sideLength = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text('InkWell Sample')),
      body: AnimatedContainer(
        height: sideLength,
        width: sideLength,
        duration: const Duration(seconds: 2),
        curve: Curves.easeIn,
        child: Material(
          color: Colors.yellow,
          child: InkWell(
            onTap: () {
              setState(() {
                sideLength == 50 ? sideLength = 100 : sideLength = 50;
              });
            },
          ),
        ),
      ),
    );
  }
}
