import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: Text("Flutter CupertinoPageRoute Demo"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterLogo(),
                SizedBox(height: 70,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      minimumSize: Size.fromHeight(40),
                      primary: Colors.teal,
                    ),
                    onPressed: () => Navigator.of(context).push(SecondPage.route()),
                    child: Text("Home Page")
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  static Route<dynamic> route() {
    return CupertinoPageRoute(
      builder: (BuildContext context) {
        return SecondPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Second Page"),
      ),
      body: Container(
        child: Center(
          child: Text("Welcome to Flutter Dev's", style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}