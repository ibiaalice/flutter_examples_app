import 'package:consumo_servico_avancado/initialPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'consumo serviço avançado',
      home: initialPage(),
    );
  }
}
