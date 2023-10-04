import 'package:flutter/material.dart';

/// Flutter code sample for [OutlinedButton].



class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OutlinedButton Sample')),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            debugPrint('Received click');
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
