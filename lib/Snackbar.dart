import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snackbar Example"), centerTitle: true),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 3),
                backgroundColor: Colors.red,
                content: Text(
                  "This is a Snackbar Error",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text("Show Snackbar"),
          ),
        ),
      ),
    );
  }
}
