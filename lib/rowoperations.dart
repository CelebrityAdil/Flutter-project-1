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
            // First row → 3 containers with image
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/download11.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/download.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/download11.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20), // space between rows
            // Second row → 2 round containers with image
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/download.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/download11.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
