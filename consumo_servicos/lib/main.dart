import 'package:consumo_servicos/initial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consumo Serviços',
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}
