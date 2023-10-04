// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PhysicalModelDemo extends StatefulWidget {
  @override
  _PhysicalModelDemoState createState() => _PhysicalModelDemoState();
}

class _PhysicalModelDemoState extends State<PhysicalModelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Physical Model Widget'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Physical Model Widget in circle Box Shape',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                PhysicalModel(
                  elevation: 6.0,
                  shape: BoxShape.circle,
                  shadowColor: Colors.red,
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Physical Model Widget in rectangle Box Shape',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                PhysicalModel(
                  elevation: 6.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Colors.red,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.blue[50],
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
