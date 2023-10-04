import 'package:flutter/material.dart';

class ChipExample extends StatefulWidget {
  const ChipExample({super.key});

  @override
  State<ChipExample> createState() => _ChipExampleState();
}

class _ChipExampleState extends State<ChipExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip Example"),
      ),
      body: Center(
        /** Chip Widget **/
        child: Chip(
          elevation: 20,
          padding: EdgeInsets.all(8),
          backgroundColor: Colors.greenAccent[100],
          shadowColor: Colors.black,
          avatar: CircleAvatar(
            child: FlutterLogo(), //NetworkImage
          ), //CircleAvatar
          label: Text(
            'Flutter',
            style: TextStyle(fontSize: 20),
          ), //Text
        ), //Chip
      ),
    );
  }
}

