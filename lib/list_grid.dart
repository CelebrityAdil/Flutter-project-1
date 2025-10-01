import 'package:flutter/material.dart';

class List_Grid extends StatefulWidget {
  const List_Grid({super.key});

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<List_Grid> {
  Map data = {
    'fruits': [
      "Item 1",
      "Item 2",
      "Item 3",
      "Item 4",
      "Item 5",
      "Item 6",
      "Item 7",
      "Item 8",
      "Item 9",
      "Item 10",
    ],
    'names': [
      "Amit",
      "Sumit",
      "Rohit",
      "Sohit",
      "Mohit",
      "Punit",
      "Ankit",
      "Vikas",
      "Rakesh",
      "Rajesh",
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List and Grid View"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: data['fruits']!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2, // width/height ratio
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(data['fruits']![index]),
              subtitle: Text(data['names']![index]),
            ),
          );
        },
      ),
    );
  }
}
