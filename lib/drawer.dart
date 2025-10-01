import 'package:flutter/material.dart';

class drawerwidget extends StatefulWidget {
  const drawerwidget({super.key});

  @override
  State<drawerwidget> createState() => _drawerwidgetState();
}

class _drawerwidgetState extends State<drawerwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  padding: EdgeInsets.all(10),
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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',
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "abc@gmail.com",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("Home Tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Group"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("Home Tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Share"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("Home Tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Delete"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("Home Tapped");
                },
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("upload"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("Home Tapped");
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text("Drawer Example"), centerTitle: true),

      body: Container(child: Center(child: Text("This is Drawer Example"))),
    );
  }
}
