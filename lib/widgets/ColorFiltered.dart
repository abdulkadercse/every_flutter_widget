import 'package:flutter/material.dart';

class ColorFilteredExample extends StatelessWidget {
  const ColorFilteredExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.red,
              BlendMode.modulate,
            ),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            ),
          ),
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.grey,
              BlendMode.saturation,
            ),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
