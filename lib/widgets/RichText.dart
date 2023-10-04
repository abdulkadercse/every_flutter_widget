import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("RichText"),
      ),
      body: Center(child: RichText(
        text: TextSpan(
          text: 'Hello ',
          style: TextStyle(color: Colors.blue),
          children: const <TextSpan>[
            TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
            TextSpan(text: ' world!'),
          ],
        ),
      ),),
    );
  }
}
