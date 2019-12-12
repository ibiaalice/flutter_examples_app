import 'package:cara_ou_coroa/pages/TelaJogar.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  //
  void _jogar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaJogar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('images/logo.png'),
            ),
            GestureDetector(
              onTap: () {
                _jogar();
                print('apertou jogar');
              },
              child: Image.asset('images/botao_jogar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
