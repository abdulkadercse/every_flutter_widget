import 'package:flutter/material.dart';

class VisibilityExample extends StatefulWidget {
  const VisibilityExample({super.key});

  @override
  State<VisibilityExample> createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample> {
  @override
  Widget build(BuildContext context) {
    bool isClickButton= false;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("VisibilityExample"),),
      body: Center(child: Column(
        children: [

        ],
      ),),
    );
  }
}
