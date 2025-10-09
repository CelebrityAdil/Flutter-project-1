import 'package:flutter/material.dart';

class Listviewlab extends StatelessWidget {
  const Listviewlab({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My flutter app"), centerTitle: true),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("adi khan"), Text("jawad khan"), Text("Mohees khan")],
        ),
        // child: Center(child: Text("Hey")),
      ),
    );
    // ElevatedButton(
    //   onPressed: () {
    //     print("Button pressed");
    //   },
    //   child: Text("Submit"),
    // ),
    // TextField(
    //   decoration: InputDecoration(labelText: "Enter your name"),
    // ),
    // Text("Hello flutter!"),
  }
}
