import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Flutter code sample for [TextFormField].



class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("TextFormFieldExample"),),
      body: TextFormField(
        decoration: const InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'What do people call you?',
          labelText: 'Name *',
        ),
        onSaved: (String? value) {
          // This optional block of code can be used to run
          // code when the user saves the form.
        },
        validator: (String? value) {
          return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
        },
      ),
    );
  }
}
