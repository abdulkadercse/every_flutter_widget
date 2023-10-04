import 'package:flutter/material.dart';

// List of icons
List <Widget> widgets = const[
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];



class TabPageSelectorExample extends StatefulWidget {
  const TabPageSelectorExample({Key ? key}): super(key: key);

  @override
  State <TabPageSelectorExample> createState() => _TabPageSelectorExampleState();
}

class _TabPageSelectorExampleState extends State <TabPageSelectorExample> with SingleTickerProviderStateMixin {

  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
        length: widgets.length,
        initialIndex: _index,
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('TabPageSelectorExample'),
        centerTitle: true,
      ),
      // Building UI
      body: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          TabBarView(
              controller: controller,
              children: widgets),

          Positioned(
            bottom: 40,
            child: TabPageSelector(color: Colors.black38,
              controller: controller,
            ),
          ),
        ],
      ),

      // Creating floating action button for navigation
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(onPressed: () {
            (_index != widgets.length - 1) ? _index++ : _index = 0;
            controller.animateTo(_index);
          },
            child: Icon(Icons.navigate_next),
            hoverElevation: 0,
            elevation: 0,
          )
        ],
      ),
    );
  }
}
