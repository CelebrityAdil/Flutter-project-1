import 'package:flutter/material.dart';
import 'package:flutter_application_1/fourthscreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Hello to First Screen", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "First Screen",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
