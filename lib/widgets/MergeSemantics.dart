import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class SemanticsExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SemanticsExampleState ();
  }
}

class _SemanticsExampleState extends State<SemanticsExample> {

  bool _isChecked = false;
  int _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SemanticsExample'),
        backgroundColor: Colors.teal,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Semantics(
              label: 'Counter text',
              child: Text(_counter.toString(), style: const TextStyle(fontSize: 20)),
            ),
            Semantics.fromProperties(
              properties: SemanticsProperties(
                button: true,
                onTap:  () => _increaseCounter(),
              ),
              child: OutlinedButton(
                child: const Text('Increase counter'),
                onPressed: () => _increaseCounter(),
              ),
            ),
            MergeSemantics(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Semantics(
                    label: 'Foo',
                    hint: 'This is foo',
                    child: const Text('Foo'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}