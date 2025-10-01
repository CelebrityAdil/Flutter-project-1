import 'package:flutter/material.dart';

class DimissibleWidget extends StatefulWidget {
  const DimissibleWidget({super.key});
  @override
  _DimissibleWidgetState createState() => _DimissibleWidgetState();
}

class _DimissibleWidgetState extends State<DimissibleWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];
    return Scaffold(
      appBar: AppBar(title: Text("Dimissible Example"), centerTitle: true),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$item dismissed to right"),
                    backgroundColor: Colors.green,
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$item dismissed to left"),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            key: Key(item),
            background: Container(color: Colors.green),
            secondaryBackground: Container(color: Colors.red),
            child: Card(child: ListTile(title: Text(items[index]))),
          );
        },
      ),
    );
  }
}
