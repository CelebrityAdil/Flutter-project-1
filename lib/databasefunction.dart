import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/databasecollection.dart';
import 'package:flutter_application_1/petspage/petsData.dart';

class Databasefunctionwidget extends StatefulWidget {
  const Databasefunctionwidget({super.key});
  @override
  _authenticationwidget createState() => _authenticationwidget();
}

class _authenticationwidget extends State<Databasefunctionwidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Database tutorial"),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.leave_bags_at_home),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              ElevatedButton(
                onPressed: () {
                  create("pets", 'kitty', 'jerry', 'cat', 12);
                },
                child: Text("Create"),
              ),
              ElevatedButton(
                onPressed: () {
                  update("pets", 'kitty', 'age', 14);
                },
                child: Text("Update"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RetrieveData()),
                  );
                },
                child: Text("Retrieve"),
              ),
              ElevatedButton(
                onPressed: () {
                  Delete('pets', 'kitty');
                },
                child: Text("Delete"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
