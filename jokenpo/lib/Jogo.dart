import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageResult = 'images/padrao.png';
  var _images = ['images/pedra.png', 'images/papel.png', 'images/tesoura.png'];
  Text _resultado = Text(
    'Resultado',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white30,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  );

  int _sortear() {
    var n = Random().nextInt(_images.length);
    print(n);

    setState(() {
      _imageResult = _images[n];
    });

    return n;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jo Ken Po! '),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          //text
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              'Oponente:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          Image.asset(_imageResult),

          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Sua escolha:',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  var n = _sortear();
                  _verificarResultado(0, n);
                },
                child: Image.asset('images/pedra.png', height: 100),
              ),
              GestureDetector(
                onTap: () {
                  var n = _sortear();
                  _verificarResultado(1, n);
                },
                child: Image.asset('images/papel.png', height: 100),
              ),
              GestureDetector(
                onTap: () {
                  var n = _sortear();
                  _verificarResultado(2, n);
                },
                child: Image.asset('images/tesoura.png', height: 100),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 250,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Colors.indigo,
                      Colors.indigoAccent,
                    ],
                  ),
                  border: Border.all(
                    width: 3,
                    color: const Color(0xFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                ),
                child: _resultado,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _verificarResultado(int x, int y) {
    if ((x == 0 && y == 2) || (x == 1 && y == 0) || (x == 2 && y == 1)) {
      _resultado = Text(
        'Você Venceu!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.green,
          fontSize: 30,
        ),
      );
    } else {
      _resultado = Text(
        'Você Perdeu!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
        ),
      );
    }
  }
}
