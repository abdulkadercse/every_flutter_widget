import 'package:flutter/material.dart';

class SpacerExample extends StatelessWidget {
  const SpacerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("Spacer Example"),),
      body: Center(
        child: const Row(
          children: <Widget>[
            Text('Begin'),
            Spacer(), // Defaults to a flex of one.
            Text('Middle'),
            // Gives twice the space between Middle and End than Begin and Middle.
            Spacer(flex: 2),
            Text('End'),
          ],
        ),
      ),
    );
  }
}
