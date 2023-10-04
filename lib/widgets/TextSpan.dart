import 'package:flutter/material.dart';



class TextSpanExample extends StatefulWidget {
  @override
  _TextSpanExampleState createState() => _TextSpanExampleState();
}

class _TextSpanExampleState extends State<TextSpanExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('TextSpan Example'),
          backgroundColor: Colors.green
      ),
      body: Center(
        child: Text.rich(
            TextSpan(
                text: 'This is textspan ',
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Widget in flutter',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  )
                ]
            )
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
