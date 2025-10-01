import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.blue,
        child: Column(
          // direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.yellow),
            Container(
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 165, 15, 20),
            ),
            Container(
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 42, 11, 197),
            ),
          ],
        ),
      ),
    );
  }
}
