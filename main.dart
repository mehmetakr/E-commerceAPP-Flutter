import 'package:appeticaret/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//build fonksiyonu içersinde ekran boyutunu almış olduk
 




    return MaterialApp(
      title: 'Flutter Demo', 
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: 

      homepage(),
    );
  }
}
