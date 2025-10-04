import 'package:flutter/material.dart';

class Rowoperations extends StatelessWidget {
  const Rowoperations({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Operation")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 50, height: 60, color: Colors.red),
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
              ],
            ),
            SizedBox(height: 20), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 61, 128, 64),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                Container(width: 60, height: 60, color: Colors.orange),
              ],
            ),
            SizedBox(height: 20), // Space between rows
          ],
        ),
      ),
    );
  }
}
