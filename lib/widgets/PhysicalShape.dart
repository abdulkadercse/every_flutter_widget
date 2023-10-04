import 'package:flutter/material.dart';

/// Flutter code sample for [PhysicalShape].

class PhysicalShapeExample extends StatelessWidget {
  const PhysicalShapeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('PhysicalShape Sample'),
      ),
      body: Center(
        child: PhysicalShape(
          elevation: 5.0,
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          color: Colors.orange,
          child: const SizedBox(
            height: 200.0,
            width: 200.0,
            child: Center(
              child: Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
