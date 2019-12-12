import 'package:cara_ou_coroa/pages/TelaInicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cara ou Coroa',
      home: TelaInicial(),
    );
  }
}
