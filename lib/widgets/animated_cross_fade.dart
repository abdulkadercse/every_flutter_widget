import 'package:flutter/material.dart';
class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample> createState() => _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> with TickerProviderStateMixin {
  late AnimationController _controller;
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated CrossFade"),

      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(
                    () {
                  _bool = !_bool;
                },
              );
            },
            child: Text("Switch", style: TextStyle(color: Colors.blue)),
          ),
          SizedBox(height: 30,),
          Center(
            child: AnimatedCrossFade(
              // First widget
                firstChild: Container(
                  height: 230,
                  width: 250,
                  color: Colors.blue,
                ),
                // Second widget
                secondChild: Container(
                  height: 250,
                  width: 230,
                  color: Colors.green,
                ),
                // Parameter to change between two
                // widgets on this basis of value of _bool
                crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                // Duration for crossFade animation.
                duration: Duration(seconds: 1)),
          ),
        ],
      ),
    );
  }
}