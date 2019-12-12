import 'package:atm_consultoria/pages/initialPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATM Consultoria',
      home: initialPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
