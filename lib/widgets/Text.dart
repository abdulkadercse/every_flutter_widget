import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text('SelectionContainer.disabled Sample')),
      body: const Center(
        child: SelectionArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Selectable text'),
              SelectionContainer.disabled(child: Text('Non-selectable text')),
              Text('Selectable text'),
            ],
          ),
        ),
      ),
    );
  }
}

