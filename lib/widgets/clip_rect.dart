import 'package:flutter/material.dart';

class ClipRectExample extends StatefulWidget {
  @override
  _ClipRectExampleState createState() => _ClipRectExampleState();
}

class _ClipRectExampleState extends State<ClipRectExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip React'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.5,
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
          )
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 100, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}