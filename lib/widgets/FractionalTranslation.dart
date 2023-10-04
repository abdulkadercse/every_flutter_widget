import 'package:flutter/material.dart';
import 'dart:math' as math;


class FractionalTranslationExample extends StatefulWidget {

  @override
  State createState() {
    return HomeState();
  }
}

class HomeState extends State<FractionalTranslationExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TransformDemo"),),
      body: Container(
        color: Colors.amberAccent,
        alignment: Alignment.center,
        child: FractionalTranslation(
            translation: Offset(1, 0),
            child: Text("Hello world")),
      ),
    );
  }
}