import 'package:flutter/material.dart';

class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Placeholder Example"),
      ),
      body: Column(
        children: <Widget>[
          Container(
              child: Placeholder()
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Placeholder(),
                ),
                Flexible(
                  flex: 4,
                  child: Placeholder(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
