import 'package:flutter/material.dart';

class ColoredBoxExample extends StatelessWidget {
  const ColoredBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp with
    // debug banner false
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      // scaffold with appbar and body
      home: Scaffold(
        appBar: AppBar(
          title: Text('Colored Box Class'),
        ),
        body: Center(
          // colorbox requires color
          // and child property
          child: ColoredBox(
            color: Colors.green,
            child: Text('Colored Box'),
          ),
        ),
      ),
    );
  }
}