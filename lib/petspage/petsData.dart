import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RetrieveData extends StatefulWidget {
  const RetrieveData({super.key});

  @override
  _DataRetrievalState createState() => _DataRetrievalState();
}

class _DataRetrievalState extends State<RetrieveData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Retrieve Data")),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('pets').snapshots(),
        builder: (context, petSnapshot) {
          if (petSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!petSnapshot.hasData || petSnapshot.data!.docs.isEmpty) {
            return Center(child: Text("No pets found"));
          }

          final petDocs = petSnapshot.data!.docs;

          return ListView.builder(
            itemCount: petDocs.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: ListTile(
                  title: Text(petDocs[index]['name']),
                  subtitle: Text(
                    petDocs[index]['body'],
                  ), // if you have another field
                ),
              );
            },
          );
        },
      ),
    );
  }
}
