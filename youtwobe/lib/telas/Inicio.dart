import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Inicio',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
