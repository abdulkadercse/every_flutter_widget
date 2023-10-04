import 'package:flutter/material.dart';


class SemanticsWidgetDemo extends StatefulWidget {
  @override
  _SemanticsWidgetDemoState createState() => _SemanticsWidgetDemoState();
}

class _SemanticsWidgetDemoState extends State<SemanticsWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics Widget Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Semantics(
            button: true,
            enabled: true,
            child: GestureDetector(
                onTap: () {
                  print('Clicked!');
                }, child: Text('Click Me!', style: TextStyle(fontSize: 56))
            ),
          ),
          Semantics(
            button: true,
            enabled: true,
            label: 'Clickable text here!',
            child: GestureDetector(
                onTap: () {
                  print('Clicked!');
                }, child: Text('Click Me!', style: TextStyle(fontSize: 56))
            ),
          ),
          ExcludeSemantics(
            excluding: true,
            child: Semantics(
              button: true,
              enabled: true,
              label: 'Clickable text here!',
              child: GestureDetector(
                  onTap: () {
                    print('Clicked!');
                  }, child: Text('Click Me!', style: TextStyle(fontSize: 56))
              ),
            ),
          ),
          Semantics(
            button: true,
            enabled: true,
            label: 'Clickable text here!',
            child: GestureDetector(
                onTap: () {
                  print('Clicked!');
                }, child: ExcludeSemantics(
                excluding: true,
                child: Text('Click Me!', style: TextStyle(fontSize: 56))
            )
            ),
          )
        ],
      ),
    );
  }
}