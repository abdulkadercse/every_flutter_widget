import 'package:flutter/material.dart';


class ListWheelScrollViewExample extends StatefulWidget {
  const ListWheelScrollViewExample({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _ListWheelScrollViewExampleState createState() => _ListWheelScrollViewExampleState();
}

class _ListWheelScrollViewExampleState extends State<ListWheelScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geeksforgeeks"),
        backgroundColor: Colors.green,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,

        // diameterRatio: 1.6,
        // offAxisFraction: -0.4,
        // squeeze: 0.8,

        // DEPRECATED : clipToSize does not exist anymore.
        // USe clipBehaviour instead.

        // clipToSize: true,

        clipBehavior: Clip.antiAlias,
        children: const <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 1',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 2',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 3',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 4',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 5',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 6',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 7',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 8',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 1",
          //	 textAlign: TextAlign.start,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 2",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 3",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 4",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 5",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 6",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 7",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 8",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
        ],
      ),
    );
  }
}
