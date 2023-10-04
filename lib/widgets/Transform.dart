import 'package:flutter/material.dart';

class TransformExample extends StatelessWidget {
  const TransformExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TransformExample"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Center(
              child: ColoredBox(
                color: Colors.black,
                child: Transform(
                  alignment: Alignment.topRight,
                  transform: Matrix4.skewY(0.3),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: const Color(0xFFE8581C),
                    child: const Text('Apartment for rent!'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
                margin: EdgeInsets.only(left: 30,right: 30),
                color: Colors.blueGrey,
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
                alignment: Alignment.topLeft,
                child: Transform(
                  transform: Matrix4.skewX(0.4),
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      color: Colors.yellow[100],
                      child: FlutterLogo()),
                )
            ),
          


          ],
        ),
      ),
    );
  }
}
