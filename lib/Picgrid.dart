import 'package:flutter/material.dart';

class PicGrid extends StatelessWidget {
  const PicGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image in Card"), centerTitle: true),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            semanticContainer: true, // 👈 groups image + text as one unit
            clipBehavior:
                Clip.antiAlias, // 👈 makes image respect rounded corners
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.network(
                    "https://picsum.photos/400/300", // ✅ test image
                    fit: BoxFit.cover,
                    semanticLabel:
                        "Sample random picture", // 👈 description for screen readers
                  ),
                ),
                const ListTile(
                  title: Text("Hello babe"),
                  subtitle: Text("This is me here"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
