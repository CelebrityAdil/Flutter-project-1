import 'package:flutter/material.dart';

// ignore: camel_case_types
class container_sized extends StatelessWidget {
  const container_sized({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Wellcome to Sized Container"),
      ),
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 17, 74, 206),
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(blurRadius: 10, spreadRadius: 5, color: Colors.white),
            ],
          ),
          child: Text("Hello", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
