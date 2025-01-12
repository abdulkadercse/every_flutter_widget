import 'package:flutter/material.dart';



class ExpandIconExample extends StatefulWidget {
  _ExpandIconExampleState createState() => _ExpandIconExampleState();
}

class _ExpandIconExampleState extends State<ExpandIconExample> {

  late bool _isExpanded;

  initState() {
    super.initState();

    _isExpanded = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Icon'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.teal,
            child: Row(
              children: <Widget>[
                SizedBox(width: 25),
                Expanded(
                  child: Text(
                      'Flutter',
                      style: TextStyle(color: Colors.white, fontSize: 22)
                  ),
                ),
                ExpandIcon(
                  isExpanded: _isExpanded,
                  color: Colors.white,
                  expandedColor: Colors.black,
                  disabledColor: Colors.grey,
                  onPressed: (bool isExpanded) {
                    setState(() {
                      _isExpanded = isExpanded;
                    });
                  },
                ),
                SizedBox(width: 25),
              ],
            ),
          ),
          Visibility(
            visible: _isExpanded,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text('Expanded Icon'),
            ),
          ),
        ],
      ),
    );
  }
}