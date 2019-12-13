import 'package:flutter/material.dart';
import 'package:preco_bitcoin/initialPage.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preço Bitcoin',
      home: initialPage(),
    );
  }
}
