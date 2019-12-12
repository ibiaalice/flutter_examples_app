import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela Secundária',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}