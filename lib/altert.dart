import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert msg App bart")),
      body: Center(
        child: ElevatedButton(
          child: Text("Click me"),
          onPressed: () {
            _showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.amber,
        title: Text("This is an alert dialog"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text("This is an alert for having "),
              Text("This is an alert dialog"),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("OK"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
        ],
      );
    },
  );
}
