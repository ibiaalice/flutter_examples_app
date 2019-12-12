import 'dart:math';

import 'package:flutter/material.dart';

class TelaJogar extends StatefulWidget {
  @override
  _TelaJogarState createState() => _TelaJogarState();
}

class _TelaJogarState extends State<TelaJogar> {
  List caras = ['images/moeda_cara.png', 'images/moeda_coroa.png'];
  Image moeda = Image.asset('images/moeda_cara.png');
  void _sortear() {
    var n = Random().nextInt(caras.length);
    setState(() {
      moeda = Image.asset(caras[n]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  GestureDetector(
                    child: moeda,
                    onTap: _sortear,
                  ),
                  GestureDetector(
                    child: Image.asset('images/botao_voltar.png'),
                    onTap: () => {
                      Navigator.pop(context),
                    },
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
