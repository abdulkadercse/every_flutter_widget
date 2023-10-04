import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: ClipRect(
            /** Banner Widget **/
            child: Banner(
              message: "20% off !!",
              location: BannerLocation.topStart,
              color: Colors.red,
              child: Container(
                color: Colors.green[100],
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190806131525/forkPython.jpg'), //Image.network
                      const SizedBox(height: 10),
                      const Text(
                        'Demo',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 40,
                            fontWeight: FontWeight.bold), //TextStyle
                      ),
                      const SizedBox(
                        height: 5,
                      ), //SizedBox
                      const Text(
                        'Fork Python Course',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold), //TextStyle
                      ), //Text
                      const SizedBox(height: 20),

                      // RaiseButton is deprecated and should not be used. Use ElevatedButton instead.

                      // RaisedButton(
                      // color: Colors.greenAccent[400],
                      // onPressed: () {},
                      // child: const Text('Register'),
                      // ) //RaisedButton
                    ], //<Widget>[]
                  ), //Column
                ), //Padding
              ), //Container
            ), //Banner
          ), //ClipRect
        ), //container
      ),
    );
  }
}
