import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cardwidget extends StatelessWidget {
  const cardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card View"), centerTitle: true),
      body: ListView(
        children: [
          Card(
            shadowColor: const Color.fromARGB(255, 229, 225, 6),
            color: Colors.red,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Amit"),
              subtitle: Text("This is good man"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: Colors.blue,
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Sarim"),
              subtitle: Text("He is form PMO"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: Colors.amber,
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Rohit"),
              subtitle: Text("He is from India"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: const Color.fromARGB(193, 107, 184, 13),
            elevation: 5,

            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Sami"),
              subtitle: Text("This is important person"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 228, 11, 11),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Ahmer"),
              subtitle: Text("He is from Liyahi"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 37, 243, 33),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Mustafa"),
              subtitle: Text("He is from unkown place"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 225, 82, 21),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Mohees"),
              subtitle: Text("Subah 8 bjy aana parta hai"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 227, 26, 180),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Sarim"),
              subtitle: Text("Sarim is very funny man"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 9, 167, 225),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Umer Jhanzaib"),
              subtitle: Text("Don of PMO"),
              trailing: Icon(Icons.delete),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 13, 201, 41),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Jawad"),
              subtitle: Text("He cheat us in project"),
              trailing: Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
