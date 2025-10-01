import 'package:flutter/material.dart';
import 'package:flutter_application_1/fourthscreen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Welcome on Second Screen", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Second Screen",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
