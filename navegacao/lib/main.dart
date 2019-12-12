import 'package:flutter/material.dart';
import 'package:navegacao/TelaPrincipal.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegacao',
      home: TelaPrincipal(),
    );
  }
}
