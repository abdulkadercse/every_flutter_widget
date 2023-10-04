import 'package:flutter/material.dart';

class ConstrainedBoxExample extends StatefulWidget {
  const ConstrainedBoxExample({super.key});

  @override
  State<ConstrainedBoxExample> createState() => _ConstrainedBoxExampleState();
}

class _ConstrainedBoxExampleState extends State<ConstrainedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ConstrainedBox"),
      ),
      body: Center(
        /** ConstrainedBox Widget **/
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(height: 200, width: 200),
          child: Container(
            color: Colors.green,
          ), //Container widget
        ), //ConstrainedBox
      ),
    );
  }
}

