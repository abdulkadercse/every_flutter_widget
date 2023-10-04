import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({super.key});

  @override
  State<AnimatedDefaultTextStyleExample> createState() => _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState extends State<AnimatedDefaultTextStyleExample> {

  bool _first = true;
  double _fontSize = 40;
  Color _color = Colors.cyan;
  double _height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedDefaultTextStyle"),
      ),
      body: Column(
        children: [

          SizedBox(
            height: 210,
            child: AnimatedDefaultTextStyle(
              curve: Curves.bounceOut,
              duration: const Duration(milliseconds: 350),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   FlutterLogo(),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Flutter Dev's"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 60 : 40;
                  _color = _first ? Colors.blue : Colors.brown;
                  _first = !_first;
                  _height = _first ? 100 : 130;
                });
              },
              child: const Text(
                "Click Here!!",
              ),
            ),
          )
        ],
      ),
    );
  }
}
