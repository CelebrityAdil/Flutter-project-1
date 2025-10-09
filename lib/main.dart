import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/datatable.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/listviewlab.dart';
import 'package:flutter_application_1/rowoperations.dart';
import 'firebase_options.dart';

// import "container_sized.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange,
      ),
      home: drawerwidget(),
      //  StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData == true) {
      //       return Databasefunctionwidget();
      //     } else {
      //       return authenticationwidget();
      //     }
      //   },
    );
  }
}
