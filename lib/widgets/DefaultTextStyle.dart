import 'package:flutter/material.dart';

/// Flutter code sample for [DefaultTextStyle].


class DefaultTextStyleExample extends StatelessWidget {
  const DefaultTextStyleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('DefaultTextStyle.merge Sample')),
      // Inherit MaterialApp text theme and override font size and font weight.
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        child: const Center(
          child: Text('Flutter'),
        ),
      ),
    );
  }
}
