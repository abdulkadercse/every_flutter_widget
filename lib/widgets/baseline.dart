import 'package:flutter/material.dart';

class BaseLineExample extends StatefulWidget {
  const BaseLineExample({super.key});

  @override
  State<BaseLineExample> createState() => _BaseLineExampleState();
}

class _BaseLineExampleState extends State<BaseLineExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BaseLineExample"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
