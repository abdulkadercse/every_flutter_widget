import 'package:flutter/material.dart';


class PositionedExample extends StatelessWidget {
  const PositionedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PositionedExample'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 300),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[

            /** Positioned WIdget **/
            Positioned(
              top: 0.0,
              child: Icon(Icons.message,
                  size: 128.0, color: Colors.greenAccent[400]), //Icon
            ), //Positioned
            /** Positioned WIdget **/

            Positioned(
              top: 0,
              right: 285,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Text('24'),
              ), //CircularAvatar
            ), //Positioned
          ], //<Widget>[]
        ), //Stack
      ),
    );
  }
}

