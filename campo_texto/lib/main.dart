import 'package:campo_texto/CampoTexto.dart';
import 'package:campo_texto/CheckBox.dart';
import 'package:campo_texto/SliderBottom.dart';
import 'package:campo_texto/radiusBottom.dart';
import 'package:campo_texto/switchBottom.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campo Texto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: SliderBottom(),
    );
  }
}
