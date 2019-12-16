import 'package:flutter/material.dart';
import 'package:youtwobe/initialPage.dart';

main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtwobe',
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}
