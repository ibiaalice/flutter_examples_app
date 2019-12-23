import 'package:app_livros/Home/home-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Livros",
      home: HomePage(),
    );
  }
}
