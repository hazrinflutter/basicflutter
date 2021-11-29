import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todolistapp/view/Firestore/add_cawangan_firestore.dart';
import 'package:todolistapp/view/Firestore/cawangan_list_firestore.dart';
import 'package:todolistapp/view/login/home_page.dart';
//import 'package:todolistapp/view/cawangan_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}
