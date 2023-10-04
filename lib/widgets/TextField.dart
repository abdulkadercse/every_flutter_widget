import 'package:flutter/material.dart';

/// Flutter code sample for [TextField].



class TextFieldExampleApp extends StatelessWidget {
  const TextFieldExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text('Obscured Textfield')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: "Enter your password"
              ),
            ),
          ),
        ),
      ),
    );
  }
}


