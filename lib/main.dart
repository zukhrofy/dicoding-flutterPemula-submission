import 'package:flutter/material.dart';
import 'package:submission/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jujutsu Kaisen Wiki',
      theme: ThemeData(fontFamily: 'Rubik'),
      home: const Home(),
    );
  }
}
