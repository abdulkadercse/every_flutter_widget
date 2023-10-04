import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScaffoldExample2 extends StatefulWidget {
  const CupertinoPageScaffoldExample2({super.key});

  @override
  State<CupertinoPageScaffoldExample2> createState() => _CupertinoPageScaffoldExample2State();
}

class _CupertinoPageScaffoldExample2State extends State<CupertinoPageScaffoldExample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoPageScaffoldExample2"),
      ),
      body: CupertinoPageScaffold(
        child: ElevatedButton(
          child: Text("Click Me"),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (
                  BuildContext context,
                  ) =>
                  CupertinoPopupSurface(
                    child: Center(
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            "hello",
                          ),
                        ),
                      ),
                    ),
                  ),
            );
          },
        ),
      )
    );
  }
}
