import 'package:flutter/material.dart';
//import 'package:scroll_animations/home_view.dart';
import 'responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MCFC Official Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const responsive() ,
    );
  }
}
