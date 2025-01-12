import 'package:flutter/material.dart';

/// Flutter code sample for [SnackBar].



class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: const Text('SnackBar Sample')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Snackbar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Awesome Snackbar!'),
                action: SnackBarAction(
                  label: 'Action',
                  onPressed: () {
                    // Code to execute.
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
