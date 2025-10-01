import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _controller = TextEditingController(); // To manage the text input

  void _submitData() {
    final enteredText = _controller.text;
    if (enteredText.isEmpty) {
      return; // Do nothing if text is empty
    }

    // Navigate to the second screen and pass the entered text
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen(enteredText)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter some text'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _submitData, child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
