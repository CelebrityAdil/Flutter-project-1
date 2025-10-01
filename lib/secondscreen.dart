import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String submittedText;

  // Constructor to accept data from FirstScreen
  SecondScreen(this.submittedText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Submitted Text: $submittedText',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
