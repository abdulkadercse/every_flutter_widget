import 'package:flutter/material.dart';

/// Flutter code sample for [TweenAnimationBuilder].



class TweenAnimationBuilderExample extends StatefulWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  State<TweenAnimationBuilderExample> createState() =>
      _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState
    extends State<TweenAnimationBuilderExample> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text('TweenAnimationBuilder Sample')),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget? child) {
            return IconButton(
              iconSize: size,
              color: Colors.blue,
              icon: child!,
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                });
              },
            );
          },
          child: const Icon(Icons.aspect_ratio),
        ),
      ),
    );
  }
}
