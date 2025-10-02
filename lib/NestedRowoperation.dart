import 'package:flutter/material.dart';

class Nestedrowoperation extends StatelessWidget {
  const Nestedrowoperation({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Nested Row Operation")),
      body: Container(
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              color: const Color.fromARGB(255, 30, 154, 207),
            ),
            Container(
              width: 50,
              height: 50,
              color: const Color.fromARGB(255, 228, 40, 106),
            ),
            Container(
              width: 50,
              height: 50,
              color: const Color.fromARGB(255, 228, 40, 106),
            ),
          ],
        ),
      ),
    );
  }
}
