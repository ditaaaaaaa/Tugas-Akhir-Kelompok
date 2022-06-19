import 'package:f/home.dart';
import 'package:flutter/material.dart';
import 'package:f/first.dart';
import 'package:f/second.dart';
import 'package:f/login.dart';
import 'package:f/home.dart';
import 'package:f/chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Akhir',
      home: first(),
      initialRoute: 'first.nameRoute',
      routes: {
        //'/first': (context) => first(),
        //'/second': (context) => second(),
        //'/login': (context) => login(),
        //'/mainpage': (context) => mainpage(),
        //'/chat': (context) => chat()

        first.nameRoute: (context) => first(),
        second.nameRoute: (context) => second(),
        login.nameRoute: (context) => login(),
        mainpage.nameRoute: (context) => mainpage(),
        chat.nameRoute: (context) => chat()
      },
    );
  }
}
