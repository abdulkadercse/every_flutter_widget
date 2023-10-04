import 'package:flutter/material.dart';

class ShaderMaskExample extends StatelessWidget {
  const ShaderMaskExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ShaderMask Example"),
      ),
      body:Center(child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: const Text(
          'I’m burning the memories',
          style: TextStyle(color: Colors.white),
        ),
      ),) ,
    );
  }
}
