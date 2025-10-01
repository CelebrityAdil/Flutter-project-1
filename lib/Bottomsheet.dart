import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom sheet App bart")),
      body: Center(
        child: ElevatedButton(
          child: Text("Click me"),
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              elevation: 0,
              isScrollControlled: true,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              context: context,
              builder: (BuildContext context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(title: Text("Adil"), subtitle: Text("Student")),
                    ListTile(title: Text("Adil"), subtitle: Text("Student")),
                    ListTile(title: Text("Adil"), subtitle: Text("Student")),
                    ListTile(title: Text("Adil"), subtitle: Text("Student")),
                    ListTile(title: Text("Adil"), subtitle: Text("Student")),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
