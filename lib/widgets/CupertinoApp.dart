import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAppExample extends StatefulWidget {
  const CupertinoAppExample({super.key});

  @override
  State<CupertinoAppExample> createState() => _CupertinoAppExampleState();
}

class _CupertinoAppExampleState extends State<CupertinoAppExample> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Home'),
        ),
        child: Center(child: Icon(CupertinoIcons.share)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
