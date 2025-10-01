import 'package:flutter/material.dart';

class cardgridwidget extends StatelessWidget {
  const cardgridwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid view of cards"), centerTitle: true),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1,
        ),
        children: [
          Card(
            margin: EdgeInsets.all(20),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.amber,
            child: Center(
              child: GridTile(
                child: Text("Sarim", style: TextStyle(fontSize: 14)),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.amber,
            child: Center(
              child: GridTile(
                child: Text("Babe", style: TextStyle(fontSize: 14)),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.amber,
            child: Center(
              child: GridTile(
                child: Text("Boy", style: TextStyle(fontSize: 14)),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.amber,
            child: Center(
              child: GridTile(
                child: Text("Girl", style: TextStyle(fontSize: 14)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
