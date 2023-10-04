import 'package:flutter/material.dart';

class BlockSemanticDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _BlockSemanticDemoState ();
  }
}

class _BlockSemanticDemoState extends State<BlockSemanticDemo> {

  bool _showMessage = false;
  static const TextStyle textStyle = const TextStyle(color: Colors.red);

  Widget _buildMessage() {
    return Card(
      color: Colors.cyan[50],
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: FlutterLogo(),
              title: Text('BlockSemantics Demo', style: textStyle),
              subtitle: Text('by Flutter Devs', style: textStyle),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: const Text('OK', style: textStyle),
                    onPressed: () => setState(() { _showMessage = false; }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter BlockSemantics Demo'),
        backgroundColor: Colors.cyan,

      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 150,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 0,
                    child: OutlinedButton(
                      child: Text('Show Message'),
                      onPressed: () => setState(() { _showMessage = true; }),
                    ),
                  ),
                  BlockSemantics(
                    blocking: _showMessage,
                    child: Visibility(
                      visible: _showMessage,
                      child: _buildMessage(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}