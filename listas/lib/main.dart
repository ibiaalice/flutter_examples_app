import 'package:flutter/material.dart';
import 'package:listas/lists.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listas',
      debugShowCheckedModeBanner: false,
      home: Lists(),
    );
  }
}
