import 'package:flutter/material.dart';



class GridPaperExample extends StatelessWidget {
  const GridPaperExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("GridPaperExample"),
      ),
      body: GridPaper(
        color: Color.fromARGB(255, 60, 138, 62),
        divisions: 2,
        subdivisions: 2,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 51, 248, 149),
        ),
      )
    );
  }
}
