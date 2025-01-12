import 'package:flutter/material.dart';
import 'dart:math' as math;
// class AnimatedBuilderWidget extends StatefulWidget {
//   const AnimatedBuilderWidget({super.key});
//
//   @override
//   State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
// }
//
// class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
//     with TickerProviderStateMixin {
//   late final AnimationController _controller =
//       AnimationController(duration: Duration(seconds: 2), vsync: this)
//         ..repeat();
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("test"),
//       ),
//       body: Center(
//         child: AnimatedBuilder(
//           animation: _controller,
//           builder: (BuildContext context, Widget? child) {
//             return Transform.rotate(
//               angle: _controller.value * 2.0* math.pi,
//             );
//           },
//           child: FlutterLogo(
//             size: 100,
//           ),
//         ),
//       ),
//     );
//   }
// }
class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

/// AnimationControllers can be created with `vsync: this` because of
/// TickerProviderStateMixin.
class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
        child: const Center(
          child: Text('Whee!'),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: FlutterLogo(size: 100,),
        );
      },
    ),);
  }
}
