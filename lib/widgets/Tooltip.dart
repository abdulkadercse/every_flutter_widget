import 'package:flutter/material.dart';

/// Flutter code sample for [Tooltip].



class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text('Tooltip Sample')),
      body: Center(
        child: const Tooltip(
          message: 'I am a Tooltip',
          child: Text('Hover over the text to show a tooltip.'),
        ),
      ),
    );
  }
}
